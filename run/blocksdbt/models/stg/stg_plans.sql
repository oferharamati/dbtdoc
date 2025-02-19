
  create or replace   view OFER_DB.dbt_DS.stg_plans
  
   as (
    select
   *
from OFER_DB.blocks.plans
  );

