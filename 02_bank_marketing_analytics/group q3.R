### Code Snippets 

set.seed(123)
train_index <- createDataPartition(df$y_num, p = 0.75, list = FALSE)
train <- df[train_index, ]
test  <- df[-train_index, ]

# [...]

# Plotting monthly conversion rates
png("monthly_conversion_rates.png", width = 900, height = 600)
ggplot(monthly, aes(x = month, y = conv_rate)) +
  geom_bar(stat = "identity") +
  labs(title = "Monthly Conversion Rate", x = "Month", y = "Conversion Rate") +
  theme_minimal()
dev.off()

# Chi-squared test: month vs y
ct_month <- table(df$month, df$y)
chis_month <- chisq.test(ct_month)
print(chis_month)

# Logistic regression with month dummies controlling for common confounders
model_c1 <- glm(y ~ month + age + job + education + duration + campaign + contact + balance,
                family = "binomial", data = train)

# AUC
pred_prob_c1 <- predict(model_c1, newdata = test, type = "response")
roc_c1 <- roc(test$y_num, pred_prob_c1)
cat("AUC (model_c1 with month) on test set:", auc(roc_c1), "\n")

# [...]

