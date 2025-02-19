
  create or replace   view OFER_DB.DBT_ds.stripe_subscriptions
  
   as (
    select
   *
from segment_events.stripe_prod.subscriptions
  );

