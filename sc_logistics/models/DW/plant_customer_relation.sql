{{
    config(
        materialized='table',
        transient = false
    )
}}
SELECT DISTINCT Plant_Code,Customer
FROM {{ref('stg_sc_plant_customer')}}