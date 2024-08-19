{{
    config(
        alias = 'dm_dim_product',
        materialized = 'clone'
    )
}}
 
{{ ref('dim_product') }}