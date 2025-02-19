
  create or replace   view OFER_DB.DBT_ds.blocks_prices
  
   as (
    select
   *
from OFER_DB.blocks.prices
  );

