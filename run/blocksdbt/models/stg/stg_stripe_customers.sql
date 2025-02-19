
  create or replace   view OFER_DB.dbt_DS.stg_stripe_customers
  
   as (
    select
   *
from segment_events.stripe_prod.customers
  );

