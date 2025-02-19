
  create or replace   view OFER_DB.dbt_DS.stg_web_users
  
   as (
    select
   id as user_id, 
   first_name, 
   last_name, 
   email, 
   phone, 
   signup_data_waiting_list_survey_goal as goal, 
   signup_data_is_work_email as is_work

--from segment_events.blocks_web_prod.users
from segment_events.blocks_web_prod.users
  );

