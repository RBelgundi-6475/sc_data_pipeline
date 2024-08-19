{{
    config(
        alias = 'dm_plant_customer_relation',
        materialized = 'clone'
    )
}}
 
{{ ref('plant_customer_relation') }}