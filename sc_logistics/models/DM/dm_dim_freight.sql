{{
    config(
        alias = 'dm_dim_freight',
        materialized = 'clone'
    )
}}
 
{{ ref('dim_freight') }}