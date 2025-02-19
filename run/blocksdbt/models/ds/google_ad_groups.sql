
  create or replace   view OFER_DB.DBT_ds.google_ad_groups
  
   as (
    select
        id as ad_groups_id, 
        name as ad_groups_name,
        campaign_id,
        uuid_ts
from segment_events.google_ads.ad_groups
  );

