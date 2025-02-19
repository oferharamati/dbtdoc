
  create or replace   view OFER_DB.DBT_ds.stripe_plans
  
   as (
    select
   *
from segment_events.stripe_prod.plans
  );

