{{
    config(
        materialized='table',
        transient = false
    )
}}

SELECT DISTINCT Customer from
(Select distinct customer 
from {{ref("stg_sc_order_list")}}
UNION
select distinct customer
from {{ref("stg_sc_plant_customer")}})