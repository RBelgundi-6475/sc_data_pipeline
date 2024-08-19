{{
    config(
        alias = 'dm_dim_plant',
        materialized = 'clone'
    )
}}
 
{{ ref('dim_plant') }}