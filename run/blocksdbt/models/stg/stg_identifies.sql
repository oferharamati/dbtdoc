
  create or replace   view OFER_DB.dbt.stg_identifies
  
   as (
    select
  *
from segment_events.blocks_web_prod.identifies
  );

