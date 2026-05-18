# Social Media Analytics - Text & Sentiment Analysis – Case: Star Wars Reviews 

## Business Problem
This project analysed Rotten Tomatoes review data across the Star Wars franchise to understand what drives audience and critic sentiment over time, identify the core reasons behind sequel-era dissatisfaction, and evaluate how narrative, nostalgia, and franchise execution influence brand perception. The broader objective was to demonstrate how NLP and sentiment mining can help entertainment businesses monitor audience response, detect brand decline early, and better align creative or marketing strategy with consumer expectations.


## Dataset
The dataset consisted of Rotten Tomatoes critic and audience reviews, ratings, and review text for 12 Star Wars films across the Original Trilogy, Prequel Trilogy, Sequel Trilogy, and Anthology films. It included sentiment scores, review text, temporal review trends, lexical diversity metrics, and contextual n-grams, enabling comparative sentiment, emotion, and narrative analysis across multiple eras of the franchise.


## Methods Used
### Sentiment Classification & Model Benchmarking:
The project compared traditional VADER sentiment analysis with BERT-based sentiment models (SiEBERT and RoBERTa/GoEmotions) to evaluate long-form movie review sentiment more accurately across films and eras. This allowed stronger contextual understanding of audience and critic opinion than lexicon-only approaches. 

### Temporal, Lexical & Emotion Trend Analysis:
Time-series sentiment tracking, lexical diversity (Type-Token Ratio), and emotion mapping were used to evaluate how critic and audience sentiment evolved over time, revealing franchise-era decline, lexical decay, and emotional shifts such as declining admiration and increasing disappointment in later films.

### Theme Extraction & Aspect-Based NLP: 
KeyBERT keyword extraction, contextual n-gram analysis, and DeBERTa-v3 aspect-based sentiment analysis (ABSA) were used to isolate the main drivers of sentiment—including pacing, story, canon, characters, and visual effects—showing which narrative dimensions most strongly influenced franchise perception.


## Key Findings
- The Original Trilogy maintained the strongest and most consistent positive sentiment, while the Sequel Trilogy experienced the sharpest audience dissatisfaction despite relatively stronger visual and technical praise.
- According to the ABSA, pacing remained comparatively strong across many films, but story, canon consistency, and character development were the biggest weaknesses in sequel-era reviews.
- Critics and audiences were often misaligned, with sequels receiving stronger critic sentiment than audience reception.
- Lexical decay also suggested reduced originality and increased franchise fatigue over time, while narrative quality (not visuals) emerged as the primary driver of long-term dissatisfaction.


## Business Recommendations
For franchise-based media companies, this project highlights the importance of prioritising storytelling, canon consistency, and character development over relying too heavily on nostalgia, visual spectacle, or brand recognition alone. Studios should use NLP and sentiment mining not just to monitor review scores, but to track deeper audience concerns around narrative quality and franchise fatigue in real time. By identifying dissatisfaction earlier, companies can make more informed creative and strategic decisions that protect long-term brand loyalty. More broadly, this framework could be scaled beyond Star Wars into a wider entertainment analytics tool for evaluating audience sentiment across major film, TV, or gaming franchises. 

_Team-developed project, contributor details available upon request._



## Skills Demonstrated
Python (Hugging Face, NLP), BERT, VADER | Sentiment Analysis | Text Mining | Customer Insights
