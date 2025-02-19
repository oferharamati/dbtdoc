
  create or replace   view OFER_DB.DBT_ds.web_tracks
  
   as (
    select
   *

--from segment_events.blocks_web_prod.tracks
from segment_events.blocks_web_prod.tracks
  );

