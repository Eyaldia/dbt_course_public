{{ config(materialized='table',alias='YOTPO_BOOKING_T',DATABASE='MAIN_DB',SCHEMA='MAIN') }}

select C_CUSTKEY
      , C_NAME
      , C_MKTSEGMENT
      , COUNT(o.*)			order_count
      , Sum(Nvl(O.O_TOTALPRICE,0))	total_order	
from  {{ref('my_first_dbt_model')}} C
      left outer join 
      {{ref('my_second_dbt_model')}} O
      on c.C_CUSTKEY = o.O_CUSTKEY
group by 1,2,3
order by 4
