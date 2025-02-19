
  create or replace   view OFER_DB.DBT_intermediate.funnel_pages
  
   as (
    select 
    UUID_TS,  
    UTMS_CAMPAIGNID campaign_id, 
    UTMS_ADGROUPID ad_group_id, 
    UTMS_UTM_CONTENT keyword, 
    title, 
    path , 
    anonymous_id , 
    user_id, 
    url,  
    iff(title like 'Blocks LPs', 1, 0) visitor, 
    iff (path like '/auth/waiting-list', 1, 0) page_clicks

    from OFER_DB.DBT_ds.web_pages
    
    qualify  ROW_NUMBER() OVER (PARTITION BY campaign_id, anonymous_id, ad_group_id, keyword,  title, path order by campaign_id, anonymous_id,ad_group_id, keyword, title, path) = 1
    order by utms_campaignid , UTMS_ADGROUPID, UTMS_UTM_CONTENT,  uuid_ts
  );

