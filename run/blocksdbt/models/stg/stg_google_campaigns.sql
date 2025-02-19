
  create or replace   view OFER_DB.dbt_DS.stg_google_campaigns
  
   as (
    select
        id as campaign_id, 
        name as campaign_name, 
        status, 
        start_date
    

--from segment_events.blocks_web_prod.users
from segment_events.google_ads.campaigns
  );

