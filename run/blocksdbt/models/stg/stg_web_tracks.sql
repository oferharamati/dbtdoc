
  create or replace   view OFER_DB.dbt_DS.stg_web_tracks
  
   as (
    select
   *

--from segment_events.blocks_web_prod.tracks
from segment_events.blocks_web_prod.tracks
  );

