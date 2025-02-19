
  create or replace   view OFER_DB.DBT_ds.blocks_subscriptions
  
   as (
    select
   *
from OFER_DB.blocks.subscriptions
  );

