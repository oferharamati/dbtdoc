
  create or replace   view OFER_DB.dbt_DS.stg_productsinstall
  
   as (
    select
   *
from OFER_DB.blocks.productinstalls
  );

