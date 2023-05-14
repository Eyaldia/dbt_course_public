
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table',alias='CUSTOMERS_T',DATABASE='MAIN_DB',SCHEMA='MAIN') }}

select *
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" 
where id is not null 
