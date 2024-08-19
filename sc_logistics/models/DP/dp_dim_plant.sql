{{
    config(
        alias='dp_dim_plant',
        materialized = 'view'
    )
}}
 
select
    Plant_Code,
    Cost_Per_Unit,
    Daily_Capacity
from
    {{ ref('dm_dim_plant') }}