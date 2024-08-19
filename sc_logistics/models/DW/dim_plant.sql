{{
    config(
        materialized='table',
        transient = false
    )
}}

SELECT DISTINCT
    W.Plant_ID AS Plant_Code,
    C.Cost_Per_Unit,
    W.Daily_Capacity
FROM {{ref("stg_sc_whcosts")}} C
JOIN {{ref("stg_sc_whcapacities")}} W ON C.WH = W.Plant_ID