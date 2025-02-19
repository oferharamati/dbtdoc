
  create or replace   view OFER_DB.dbt_DS.stg_subscriptions
  
   as (
    select
   *
from OFER_DB.blocks.subscriptions
  );

