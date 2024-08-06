
SELECT 
    $1::string as carrier,
    $2::string as orig_port,
    $3::string as dest_port,
    $4::string as min_wt_qty,
    $5::string as max_wt_qty,
    $6::string as service_level,
    $7::string as minimum_cost,
    $8::string as rate,
    $9::string as transport_mode,
    $10::string as tpt_day_cnt,
    $11::string as carrier_type
FROM @s3_snow_stage/SC_FreightRates.csv





-- Carrier	orig_port_cd	dest_port_cd	minm_wgh_qty	max_wgh_qty	svc_cd	minimum cost	rate	mode_dsc	tpt_day_cnt	Carrier type
