-- my_test_model.sql

{% set test_result_sql = """SELECT {{ test_script.perform_test() }}""" %}
{% set test_result = run_query(test_result_sql) %}

{% if test_result[0][0] != 1 %}
  {% do log('Test failed!', 'error') %}
{% endif %}
