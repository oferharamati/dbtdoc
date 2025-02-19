
  create or replace   view OFER_DB.DBT_ds.blocks_plans
  
   as (
    select
   *
from OFER_DB.blocks.plans
  );

