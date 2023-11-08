SELECT 
    product_name, 
    CAST(SUBSTR(product_calories, 6) AS INT64) AS product_calories
FROM `mcdonalds_dataset`.UK_menu
ORDER BY 2 DESC