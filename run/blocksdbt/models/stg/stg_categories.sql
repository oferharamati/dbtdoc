
  create or replace   view OFER_DB.dbt_DS.stg_categories
  
   as (
    select
   *
from OFER_DB.blocks.categories
  );

