{{
    config(
        alias='dp_dim_customer',
        materialized = 'view'
    )
}}
 
select
    Customer
from
    {{ ref('dm_dim_customer') }}