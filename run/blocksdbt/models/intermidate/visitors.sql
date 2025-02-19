
  create or replace   view BLOCKS_DW.dbt.visitors
  
   as (
    select * 
    from BLOCKS_DW.dbt.stg_pages 
    where campaign_id is not null 
    order by campaign_id , uuid_ts
  );

