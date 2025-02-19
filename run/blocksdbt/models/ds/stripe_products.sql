
  create or replace   view OFER_DB.DBT_ds.stripe_products
  
   as (
    select
   *
from segment_events.stripe_prod.products
  );

