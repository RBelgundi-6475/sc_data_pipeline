
WITH wh_costs as
(
    SELECT
        $1::string as WH,
        $2::string as cost_per_unit
    FROM @s3_snow_stage/SC_WhCosts.csv

)

SELECT * FROM wh_costs
