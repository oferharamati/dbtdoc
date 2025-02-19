
  create or replace   view OFER_DB.DBT_ds.blocks_productsinstall
  
   as (
    select
   *
from OFER_DB.blocks.productinstalls
  );

