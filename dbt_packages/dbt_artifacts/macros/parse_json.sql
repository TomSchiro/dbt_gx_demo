{% macro parse_json(field) -%}
{% if not field is mapping %}
  {{ return(adapter.dispatch('parse_json')(field)) }}
{% endif %}
{%- endmacro %}

{% macro default__parse_json(field) -%}
    {{ field }}
{%- endmacro %}

{% macro snowflake__parse_json(field) -%}
{% if not field is mapping %}
    parse_json({{ field }})
{% endif %}
{%- endmacro %}

{% macro bigquery__parse_json(field) -%}
    parse_json({{ field }})
{%- endmacro %}

