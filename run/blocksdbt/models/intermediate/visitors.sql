
  create or replace   view OFER_DB.DBT_intermediate.visitors
  
   as (
    select * 
    from OFER_DB.DBT_intermediate.funnel_pages 
    where campaign_id is not null 
    order by campaign_id , uuid_ts
  );

