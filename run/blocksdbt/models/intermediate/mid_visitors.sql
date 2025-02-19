
  create or replace   view OFER_DB.dbt_MID.mid_visitors
  
   as (
    select * 
    from OFER_DB.dbt_MID.mid_web_pages 
    where campaign_id is not null 
    order by campaign_id , uuid_ts
  );

