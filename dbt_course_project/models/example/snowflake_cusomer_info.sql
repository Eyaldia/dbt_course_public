{{ config(materialized='table') }}

select C_CUSTKEY
      , C_NAME
      , C_MKTSEGMENT
      , COUNT(o.*)			order_count
      , Sum(Nvl(O.O_TOTALPRICE,0))	total_order	
from  "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" C
      left outer join 
      "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" O
      on c.C_CUSTKEY = o.O_CUSTKEY
Where year(o.O_ORDERDATE)={{ var ('my_year') }}
group by 1,2,3
order by 4