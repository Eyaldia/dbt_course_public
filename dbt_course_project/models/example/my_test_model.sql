-- my_test_model.sql

{%- set my_test_script = adapter.execute_file("macros/my_test_script.py") -%}

{%- if not my_test_script.perform_test() -%}
  {% do log('Test failed!', 'error') %}
{%- endif -%}
