
  create or replace   view OFER_DB.dbt_DS.stg_web_accounts
  
   as (
    select
   id as account_id, 
   name as account_name
  

from segment_events.blocks_web_prod.accounts
  );

