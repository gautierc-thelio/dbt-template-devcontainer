{% macro generate_schema_name(custom_schema_name, node) -%}
  {%- set default_schema = target.schema -%}
  {%- set path = node.original_file_path -%}

  {%- if '/input/' in path -%}
    {{ 'raw' }}

  {%- elif '/transform/' in path -%}
    {{ 'silver' }}

  {%- elif 'output/external/' in path -%}
    {{ 'gold_c3' }}

  {%- elif '/output/' in path -%}
    {{ 'gold' }}

  {%- elif custom_schema_name is none -%}
    {{ default_schema }}

  {%- else -%}
    {{ default_schema }}_{{ custom_schema_name | trim }}
  {%- endif -%}
{%- endmacro %}