{{
    config(
        materialized = 'view'
    )
}}
 
select
    Plant_Code, 
    Customer
from
    {{ ref('dm_plant_customer_relation') }}
    