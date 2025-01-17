WITH raw_hosts_cte AS (
  SELECT
    ID AS host_id,
    NAME AS host_name,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
  FROM
    AIRBNB.RAW.RAW_HOSTS
)

SELECT
  host_id AS host,
  host_name AS name,
  IS_SUPERHOST,
  CREATED_AT,
  UPDATED_AT
FROM
  raw_hosts_cte 