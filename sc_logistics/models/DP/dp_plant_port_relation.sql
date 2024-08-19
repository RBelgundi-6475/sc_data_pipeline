{{
    config(
        materialized = 'view'
    )
}}
 
select
    Plant_Code, 
    Port_ID
from
    {{ ref('dm_plant_port_relation') }}
    