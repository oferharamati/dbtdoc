
  create or replace   view OFER_DB.DBT_ds.blocks_products
  
   as (
    select
   *
from OFER_DB.blocks.products
  );

