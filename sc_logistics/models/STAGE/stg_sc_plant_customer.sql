
SELECT 
    PLANT_CODE::VARCHAR(10) as PLANT_CODE,
    CUSTOMERS::VARCHAR(40) as CUSTOMER
FROM {{ref('raw_sc_plant_customer')}}