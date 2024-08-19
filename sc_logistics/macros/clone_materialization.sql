{% materialization clone, adapter='snowflake' -%}
    
    {%- set identifier = model['alias'] -%}
    {%- set target_relation = api.Relation.create(database=database, schema=schema, identifier=identifier, type='table') -%}
 
    {{ run_hooks(pre_hooks, inside_transaction=False) }}
    {{ run_hooks(pre_hooks, inside_transaction=True) }}
 
    {%- call statement('main') -%}
        CREATE OR REPLACE TABLE {{ target_relation }}
            CLONE {{ sql }}
    {%- endcall -%}
    
    {{ run_hooks(post_hooks, inside_transaction=True) }}
    {{ adapter.commit() }}
    {{ run_hooks(post_hooks, inside_transaction=False) }}
    {{ return({'relations': [target_relation]}) }}
 
{%- endmaterialization %}