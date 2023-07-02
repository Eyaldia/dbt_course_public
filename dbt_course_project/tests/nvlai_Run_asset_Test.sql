select  NVLAI.PUBLIC.NVL_AI_RUN_ASSET_TEST(organization_id => '1627922126193x704381721577259000'
                                            ,platform_id => '1627925766212x951971502841921500'
                                            ,asset_key => '1671028081707x171428091268173380'
                                            ) results 
where results ilike '%Failed%'