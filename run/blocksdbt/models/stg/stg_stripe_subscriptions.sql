
  create or replace   view OFER_DB.dbt_DS.stg_stripe_subscriptions
  
   as (
    select
   *
from segment_events.stripe_prod.subscriptions
  );

