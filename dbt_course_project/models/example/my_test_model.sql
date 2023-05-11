-- my_test_model.sql

-- Include the Jinja templating syntax to execute the Python script
{% set test_result = run_python_script('macros.my_test_script.perform_test') %}

-- Fail the test if the result is False
{% if not test_result %}
    {% do log('Test failed!', 'error') %}
{% endif %}
