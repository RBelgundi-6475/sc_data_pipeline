
SELECT 
    PLANT_CODE::VARCHAR(10) as PLANT_CODE,
    LTRIM(PRODUCT_ID,'0')::NUMBER(8,0) as PRODUCT_ID
FROM {{ref('raw_sc_products_per_plant')}}