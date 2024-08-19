{{
    config(
        alias = 'dm_dim_customer',
        materialized = 'clone'
    )
}}
 
{{ ref('dim_customer') }}