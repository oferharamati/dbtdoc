
  create or replace   view OFER_DB.DBT_ds.server_tracks
  
   as (
    select
   *

--from segment_events.blocks_server_prod.tracks
from segment_events.blocks_server_production.tracks
  );

