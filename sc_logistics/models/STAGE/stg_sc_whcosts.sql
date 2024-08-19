{{ config(
    tags=["stage"]
) }}


SELECT
    WH::varchar(10) as WH,
    replace(COST_PER_UNIT,'$','')::NUMBER(6,0) as COST_PER_UNIT
FROM {{ref('raw_sc_whcosts')}} 

