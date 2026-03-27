WITH src_tags AS (
    SELECT * FROM {{ ref('src_genome_tags') }}
)

SELECT 
    tag_id,
    INITCAP(TRIM(tag)) AS tagname
FROM src_tags