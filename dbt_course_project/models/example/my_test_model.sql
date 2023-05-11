-- my_test_model.sql

{{ dbt_utils.run_python_script("macros.my_test_script.perform_test") }}
{% set test_result = return %}

{% if not test_result %}
  {% do log('Test failed!', 'error') %}
{% endif %}
