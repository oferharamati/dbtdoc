
  create or replace   view BLOCKS_DW.dbt.subscriptions
  
   as (
    select s.start_date,
            s.status, 
            s.canceled_at, 
            p.interval, 
            p.amount/100 amount , 
            c.email, 
            pr.name 
    from BLOCKS_DW.dbt.stg_stripe_subscriptions s
    left join BLOCKS_DW.dbt.stg_stripe_plans p on s.plan_id = p.id
    left join BLOCKS_DW.dbt.stg_stripe_customers c on s.customer_id = c.id
    left join BLOCKS_DW.dbt.stg_stripe_products pr on p.product = pr.id
    where s.status = 'active'
    order by s.start_date desc
  );

