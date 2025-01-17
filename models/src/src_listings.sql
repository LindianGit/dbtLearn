-- CTE to select relevant columns from the raw listings table
WITH raw_listings_cte AS (
    SELECT 
        ID AS listing_id,
        NAME AS listing_name,
        LISTING_URL,
        ROOM_TYPE,
        MINIMUM_NIGHTS,
        HOST_ID,
        PRICE as price_str,
        CREATED_AT,
        UPDATED_AT
    FROM
        AIRBNB.RAW.raw_listings
)
-- Select specific columns from the CTE try
SELECT
    listing_id,
    LISTING_URL,
    listing_name,
    ROOM_TYPE,
    MINIMUM_NIGHTS,
    HOST_ID,
    price_str,
    CREATED_AT,
    UPDATED_AT
FROM
    raw_listings_cte
