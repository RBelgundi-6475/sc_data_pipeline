{{
    config(
        materialized = 'view'
    )
}}
 
select
    Port_ID
from
    {{ ref('dm_dim_port') }}