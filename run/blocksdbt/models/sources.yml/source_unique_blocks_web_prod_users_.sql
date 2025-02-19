select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
     as unique_field,
    count(*) as n_records

from segment_events.blocks_web_prod.users
where  is not null
group by 
having count(*) > 1



      
    ) dbt_internal_test