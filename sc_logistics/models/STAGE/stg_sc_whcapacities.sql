{{ config(
    tags=["stage"]
) }}


select 
    PLANT_ID::varchar(10) as PLANT_ID,
    replace(DAILY_CAPACITY,' units','')::INTEGER as DAILY_CAPACITY
from {{ref('raw_sc_whcapacities')}}


