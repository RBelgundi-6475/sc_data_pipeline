
SELECT 
    REGEXP_REPLACE(PLANT_CODE,'[^a-zA-Z0-9]','')::VARCHAR(10) as PLANT_CODE,
    PORT
FROM {{ref('raw_sc_plant_port')}}