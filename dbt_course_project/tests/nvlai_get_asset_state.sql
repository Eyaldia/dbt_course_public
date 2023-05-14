    select  NVLAI.PUBLIC.NVL_AI_GET_ASSET_STATE('1683120204323x323537520054763500', '{{ref('snowflake_cusomer_info')}}') ASSET_STATUS
    where ASSET_STATUS not like '%Verified%'