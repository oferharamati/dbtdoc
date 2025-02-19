
  create or replace   view OFER_DB.DBT_ds.blocks_categories
  
   as (
    select
   *
from OFER_DB.blocks.categories
  );

