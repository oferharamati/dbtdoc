
  create or replace   view OFER_DB.dbt_DS.stg_server_tracks
  
   as (
    select
   *

--from segment_events.blocks_server_prod.tracks
from segment_events.blocks_server_production.tracks
  );

