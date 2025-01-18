WITH dim_hosts_cte AS (
    SELECT * FROM {{ ref('src_hosts') }}
)
SELECT
    host_id ,
    NVL(name, 'Anonymous') AS host_name,
    IS_SUPERHOST AS is_superhost,
    CREATED_AT AS created_at,
    UPDATED_AT AS updated_at
FROM
    dim_hosts_cte