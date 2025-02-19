
  create or replace   view OFER_DB.dbt.stg_accounts
  
   as (
    select
   id as account_id, 
   name as account_name
  

from segment_events.blocks_web_prod.accounts
  );

