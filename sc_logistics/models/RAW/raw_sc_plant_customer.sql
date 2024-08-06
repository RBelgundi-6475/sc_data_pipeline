
SELECT
    PLANT_CODE,
    CUSTOMERS
FROM {{source("snow_share","SC_VMI_CUSTOMERS_TBL")}}