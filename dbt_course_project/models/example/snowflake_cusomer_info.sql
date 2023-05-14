{{ config(materialized='table',alias='YOTPO_BOOKING_T',DATABASE='MAIN_DB',SCHEMA='MAIN') }}

select C_CUSTKEY
      , C_NAME
      , C_MKTSEGMENT
      , COUNT(o.*)			order_count
      , Sum(Nvl(O.O_TOTALPRICE,0))	total_order	
from  "MAIN_DB"."MAIN"."CUSTOMERS_T" C
      left outer join 
      "MAIN_DB"."MAIN"."ORDERS_T" O
      on c.C_CUSTKEY = o.O_CUSTKEY
group by 1,2,3
order by 4
