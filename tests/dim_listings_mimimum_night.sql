SELECT *
FROM {{ model }}
WHERE minimum_nights < 1
LIMIT 10