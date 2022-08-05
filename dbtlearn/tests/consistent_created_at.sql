SELECT *
FROM {{ ref('fct_reviews')}} AS f
JOIN {{ ref('dim_listings_cleansed')}} AS d
USING (listing_id)
WHERE d.created_at >= f.review_date