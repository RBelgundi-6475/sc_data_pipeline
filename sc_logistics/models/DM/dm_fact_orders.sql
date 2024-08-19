{{
    config(
        alias = 'dm_fact_orders',
        materialized = 'clone'
    )
}}
 
{{ ref('fact_orders') }}