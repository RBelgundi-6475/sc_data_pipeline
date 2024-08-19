{{
    config(
        alias = 'dm_plant_product_relation',
        materialized = 'clone'
    )
}}
 
{{ ref('plant_product_relation') }}