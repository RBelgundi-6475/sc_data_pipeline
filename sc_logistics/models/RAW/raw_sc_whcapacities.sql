
WITH wh_capacities AS (
    SELECT 
        $1::string as plant_id,
        $2::string as daily_capacity
    FROM @s3_snow_stage/SC_WhCapacities.csv
)

SELECT * FROM wh_capacities