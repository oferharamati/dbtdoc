
  create or replace   view OFER_DB.dbt_DS.stg_products
  
   as (
    select
   *
from OFER_DB.blocks.products
  );

