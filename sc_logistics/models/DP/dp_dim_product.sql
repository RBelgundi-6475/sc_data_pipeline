{{
    config(
        materialized = 'view'
    )
}}
 
select
    Product_ID
from
    {{ ref('dm_dim_product') }}