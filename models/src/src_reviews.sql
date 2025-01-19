WITH raw_reviews_cte AS (
  SELECT
    LISTING_ID,
    DATE AS review_date,
    REVIEWER_NAME,
    COMMENTS AS review_comments,
    SENTIMENT AS review_sentiment
  FROM
    AIRBNB.RAW.RAW_REVIEWS
)

SELECT
  LISTING_ID,
  review_date,
  REVIEWER_NAME,
  review_comments,
  review_sentiment
FROM
  raw_reviews_cte