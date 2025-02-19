
  create or replace   view OFER_DB.dbt_MID.mid_keywords_data
  
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
from   OFER_DB.dbt_DS.stg_google_keywords_performance f
left join OFER_DB.dbt_DS.stg_google_keywords d on d.keyword_id = f.keyword_id 
where  f.ad_group_id = d.ad_group_id 
and     f.campaign_id = d.campaign_id
  );

