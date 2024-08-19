{{
    config(
        materialized = 'view'
    )
}}
 
select
    ORDER_ID,
    ORDER_DATE,
    ORIGIN_PORT,
    CARRIER,
    TPT,
    SERVICE_LEVEL,
    SHIP_AHEAD_DAY_COUNT,
    SHIP_LATE_DAY_COUNT,
    CUSTOMER,
    PRODUCT_ID,
    PLANT_CODE,
    DESTINATION_PORT,
    UNIT_QUANTITY,
    WEIGHT_VALUE,
    WEIGHT_UNIT
from
    {{ ref('dm_fact_orders') }}