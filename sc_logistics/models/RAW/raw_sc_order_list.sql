
SELECT
    $1::string as order_id,
    $2::string as order_date,
    $3::string as origin_port,
    $4::string as carrier,
    $5::string as tpt,
    $6::string as service_level,
    $7::string as ship_ahead_day_count,
    $8::string as ship_late_day_count,
    $9::string as customer,
    $10::string as product_id,
    $11::string as plant_code,
    $12::string as destination_port,
    $13::string as unit_quantity,
    $14::string as weight
FROM @s3_snow_stage/SC_OrderList.csv


