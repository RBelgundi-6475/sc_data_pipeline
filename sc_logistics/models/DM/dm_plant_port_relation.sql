{{
    config(
        alias = 'dm_plant_port_relation',
        materialized = 'clone'
    )
}}
 
{{ ref('plant_port_relation') }}