
{{ config(
    materialized='table',
    tags="raw_data_model"
) }}

select * from SC_WhCosts