{{
    config(
        alias='dp_dim_freight',
        materialized = 'view'
    )
}}
 
select
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
from
    {{ ref('dm_dim_freight') }}