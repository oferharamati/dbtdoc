
  create or replace   view BLOCKS_DW.dbt.keywords_data
  
   as (
    select d.campaign_id, 
        d.campaign_name, 
        d.ad_group_name,
        d.ad_group_id, 
        date_start, 
        date_stop, 
        keyword, 
        criteria, 
        impressions, 
        clicks, 
        average_cost
from   BLOCKS_DW.dbt.stg_keywords_performance f
left join BLOCKS_DW.dbt.stg_keywords d on d.keyword_id = f.keyword_id 
where  f.ad_group_id = d.ad_group_id 
and     f.campaign_id = d.campaign_id
  );

