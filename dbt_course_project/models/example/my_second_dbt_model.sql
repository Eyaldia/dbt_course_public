{{ config(materialized='table',alias='ORDERS_T',DATABASE='MAIN_DB',SCHEMA='MAIN') }}

select *
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" 
