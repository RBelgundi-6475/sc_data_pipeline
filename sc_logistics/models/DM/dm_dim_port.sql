{{
    config(
        alias = 'dm_dim_port',
        materialized = 'clone'
    )
}}
 
{{ ref('dim_port') }}