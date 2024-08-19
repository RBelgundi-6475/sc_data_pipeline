{{
    config(
        materialized='table',
        transient = false
    )
}}
SELECT DISTINCT Port AS Port_ID
FROM {{ref("stg_sc_plant_ports")}}