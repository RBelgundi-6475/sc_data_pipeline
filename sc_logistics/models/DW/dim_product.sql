{{
    config(
        materialized='table',
        transient = false
    )
}}
SELECT DISTINCT 
    Product_ID
FROM {{ref('stg_sc_products_per_plant')}}