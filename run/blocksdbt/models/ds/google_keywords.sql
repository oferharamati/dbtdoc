
  create or replace   view OFER_DB.DBT_ds.google_keywords
  
   as (
    select 
    c.id as  campaign_id,  
    c.name as campaign_name, 
    g.id as ad_group_id, 
    g.name as ad_group_name, 
    k.original_id as keyword_id, 
    k.text as keyword
    from segment_events.google_ads.campaigns as c
    inner join segment_events.google_ads.ad_groups as g on c.id = g.campaign_id
    inner join segment_events.google_ads.keywords as k on g.id = k.ad_group_id
  );

