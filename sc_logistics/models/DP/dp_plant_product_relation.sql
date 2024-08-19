{{
    config(
        materialized = 'view'
    )
}}
 
select
    Plant_Code, 
    Product_ID
from
    {{ ref('dm_plant_product_relation') }}