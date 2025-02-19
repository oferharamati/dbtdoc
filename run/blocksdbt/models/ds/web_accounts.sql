
  create or replace   view OFER_DB.DBT_ds.web_accounts
  
   as (
    select
   id as account_id, 
   name as account_name
  

from segment_events.blocks_web_prod.accounts
  );

