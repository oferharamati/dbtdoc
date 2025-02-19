
  create or replace   view OFER_DB.DBT_ds.web_pages
  
   as (
    select
   *

--from segment_events.blocks_web_prod.
from segment_events.blocks_web_prod.pages
  );

