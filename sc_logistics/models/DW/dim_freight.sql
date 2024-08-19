{{
    config(
        materialized='table',
        transient = false
    )
}}
SELECT DISTINCT 
    Carrier,
    Origin_Port,
    Destination_Port,
    MIN_WT_QTY,
    MAX_WT_QTY,
    Service_Level,
    Minimum_Cost,
    Rate,
    Transport_Mode,
    TPT_Day_Cnt,
    Carrier_Type
FROM {{ref("stg_sc_freight_rates")}}