# ---------- Setup ----------
rm(list = ls())
set.seed(123)

# Packages - install if missing
pkgs <- c("tidyverse","caret","broom","pROC","factoextra","cluster","NbClust","reshape2","gridExtra")
installed <- rownames(installed.packages())
for(p in pkgs) if(!(p %in% installed)) install.packages(p, dependencies = TRUE)

library(tidyverse)
library(caret)
library(broom)
library(pROC)
library(factoextra)
library(cluster)
library(NbClust)
library(reshape2)
library(gridExtra)

# ---------- Load data ----------
# The bank-additional-full.csv is semicolon separated in the UCI Bank Marketing dataset.
file_path <- "/mnt/data/bank-additional-full.csv"
df <- read.csv(file_path, sep = ";", stringsAsFactors = FALSE)

# Quick look
glimpse(df)
cat("Rows:", nrow(df), "Columns:", ncol(df), "\n")

# ---------- Basic cleaning & type conversions ----------
# Convert obvious categorical columns to factors
factor_cols <- c("job","marital","education","default","housing","loan","contact","month","poutcome","y")
df[factor_cols] <- lapply(df[factor_cols], factor)

# Convert numeric columns (if read as char)
num_cols <- c("age","balance","day","duration","campaign","pdays","previous")
df[num_cols] <- lapply(df[num_cols], as.numeric)

# Recode target y to binary factor with levels "no","yes" (already likely)
df$y <- factor(df$y, levels = c("no","yes"))

# Create a 0/1 numeric target for models + convenience
df$y_num <- ifelse(df$y == "yes", 1, 0)

# Quick target distribution
cat("Subscription rates:\n")
print(prop.table(table(df$y)))

# ---------- Create train/test split for predictive tasks ----------
set.seed(123)
train_index <- createDataPartition(df$y_num, p = 0.75, list = FALSE)
train <- df[train_index, ]
test  <- df[-train_index, ]


# ---------- QUESTION C ----------
# Seasonality: does campaign success vary by month? Are some months more effective?
# Steps:
#  1) Compute monthly conversion rates & visualize.
#  2) Chi-squared test month vs y.
#  3) Logistic regression with month dummies controlling for confounders (age, campaign, economic indicators if present).
# Note: dataset includes month as a factor variable.

cat("\n\n=== QUESTION C: SEASONALITY / MONTH ANALYSIS ===\n")

# 1) Monthly conversion rates
monthly <- df %>%
  group_by(month) %>%
  summarize(n = n(), conversions = sum(y_num), conv_rate = mean(y_num)) %>%
  arrange(match(month, month.name %>% tolower()))  # this only sorts if months are full names; our months are short (jan, feb,...)

# Because months are 'jan','feb',... order manually:
month_levels <- c("jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec")
monthly <- df %>%
  mutate(month = factor(month, levels = month_levels)) %>%
  group_by(month) %>%
  summarize(n = n(), conversions = sum(y_num), conv_rate = mean(y_num)) %>%
  arrange(match(month, month_levels))

print(monthly)

# Plot monthly conversion rates
png("monthly_conversion_rates.png", width = 900, height = 600)
ggplot(monthly, aes(x = month, y = conv_rate)) +
  geom_bar(stat = "identity") +
  labs(title = "Monthly Conversion Rate", x = "Month", y = "Conversion Rate") +
  theme_minimal()
dev.off()

# 2) Chi-squared test: month vs y
ct_month <- table(df$month, df$y)
chis_month <- chisq.test(ct_month)
print(chis_month)

# 3) Logistic regression with month dummies controlling for common confounders.
# Use month as factor, reference = jan by default (or choose lowest conversion as ref)
model_c1 <- glm(y ~ month + age + job + education + duration + campaign + contact + balance,
                family = "binomial", data = train)

summary(model_c1)
or_c1 <- tidy(model_c1) %>%
  mutate(odds_ratio = exp(estimate),
         conf_low = exp(estimate - 1.96*std.error),
         conf_high = exp(estimate + 1.96*std.error)) %>%
  filter(grepl("^month", term)) %>% arrange(term)

print(or_c1)

# AUC
pred_prob_c1 <- predict(model_c1, newdata = test, type = "response")
roc_c1 <- roc(test$y_num, pred_prob_c1)
cat("AUC (model_c1 with month) on test set:", auc(roc_c1), "\n")

# Compare conversion rates visually with confidence intervals
monthly_plot_data <- df %>%
  mutate(month = factor(month, levels = month_levels)) %>%
  group_by(month) %>%
  summarize(conv_rate = mean(y_num), n = n()) %>%
  mutate(se = sqrt(conv_rate * (1 - conv_rate) / n),
         lower = pmax(0, conv_rate - 1.96 * se),
         upper = pmin(1, conv_rate + 1.96 * se))

png("monthly_conv_with_ci.png", width = 900, height = 600)
ggplot(monthly_plot_data, aes(x = month, y = conv_rate)) +
  geom_point(size = 3) +
  geom_errorbar(aes(ymin = lower, ymax = upper), width = 0.2) +
  labs(title = "Monthly conversion rate with 95% CI", x = "Month", y = "Conversion rate") +
  theme_minimal()
dev.off()

# Save monthly table
write.csv(monthly_plot_data, "monthly_conversion_rates_with_ci.csv", row.names = FALSE)



'''
Question C (Seasonality)
- Monthly conversion rates and significance testing (chi-square) indicate whether month matters.
- Logistic regression with month dummies quantifies month-specific effects while controlling for other factors; ORs for months saved in or_c1 object.
- If some months show significantly higher adjusted odds, plan marketing pushes during those months and reduce spend in low months.

Files & plots generated (in working directory):
  - modelA_personal_oddsratios.csv
- pca_scree.png
- clusters_pca_plot.png
- cluster_profiles.csv
- cluster_conversion_table.csv
- monthly_conversion_rates.png
- monthly_conv_with_ci.png
- monthly_conversion_rates_with_ci.csv
\n")

'''

