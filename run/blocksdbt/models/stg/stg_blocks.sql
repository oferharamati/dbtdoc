
  create or replace   view OFER_DB.dbt.stg_blocks
  
   as (
    select
   *
from OFER_DB.blocks.blocks
  );

