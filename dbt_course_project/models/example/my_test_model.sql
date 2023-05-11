-- my_test_model.sql

{{ run_operation(
    python_callable="macros.my_test_script.perform_test",
    arguments={}
) }}
{% set test_result = return %}

{% if not test_result %}
  {% do log('Test failed!', 'error') %}
{% endif %}
