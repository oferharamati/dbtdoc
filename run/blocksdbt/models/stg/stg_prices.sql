
  create or replace   view OFER_DB.dbt_DS.stg_prices
  
   as (
    select
   *
from OFER_DB.blocks.prices
  );

