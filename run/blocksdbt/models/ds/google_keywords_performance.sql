
  create or replace   view OFER_DB.DBT_ds.google_keywords_performance
  
   as (
    select campaign_id, 
    ad_group_id, 
    original_keyword_id as keyword_id, 
    criteria, 
    date_start, 
    date_stop,
    impressions, 
    clicks , 
    average_cost/1000000 as average_cost   
from segment_events.google_ads.keyword_performance_reports
  );

