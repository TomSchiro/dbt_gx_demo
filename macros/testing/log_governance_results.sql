{% macro log_governance_results(model, path, error) %}

{% set query %}

insert into bronze.dbt.governance_test_errors
(model, modelpath, error)
values
('{{model}}', '{{path}}', '{{error}}')

{% endset %}

{% do run_query(query) %}

{% endmacro %}

