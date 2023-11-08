

{{ config(materialized='table') }}

with kcal as (

    select * from {{ ref('stg_kcal') }}
    
),

price as (

    select * from {{ ref('stg_price') }}

),

final as (

    select kcal.product_name, kcal.product_calories, price.product_price
    from kcal, price
    where kcal.product_name = price.product_name
    
)

select * from final
