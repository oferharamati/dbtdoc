
  create or replace   view OFER_DB.DBT_ds.web_identifies
  
   as (
    select
  *
from segment_events.blocks_web_prod.identifies
  );

