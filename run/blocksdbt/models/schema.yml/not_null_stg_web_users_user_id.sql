select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select user_id
from OFER_DB.dbt_stg.stg_web_users
where user_id is null



      
    ) dbt_internal_test