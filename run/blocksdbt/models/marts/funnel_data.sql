
  create or replace   view OFER_DB.dbt_MART.funnel_data
  
   as (
    select c.campaign_name, 
    g.ad_groups_name, 
    f.*, 
    f.clicks*f.average_cost cost  
from    OFER_DB.dbt_MID.mid_funnel f, 
        OFER_DB.dbt_DS.stg_google_ad_groups g, 
        OFER_DB.dbt_DS.stg_google_campaigns c
    where f.campaign_id = c.campaign_id and f.ad_group_id = g.ad_groups_id and f.campaign_id = g.campaign_id
  );

