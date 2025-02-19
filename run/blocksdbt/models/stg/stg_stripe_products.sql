
  create or replace   view OFER_DB.dbt_DS.stg_stripe_products
  
   as (
    select
   *
from segment_events.stripe_prod.products
  );

