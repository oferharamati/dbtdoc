
  create or replace   view OFER_DB.DBT_intermediate.subscriptions
  
   as (
    select s.start_date,
            s.status, 
            s.canceled_at, 
            p.interval, 
            p.amount/100 amount , 
            c.email, 
            pr.name 
    from OFER_DB.DBT_ds.stripe_subscriptions s
    left join OFER_DB.DBT_ds.stripe_plans p on s.plan_id = p.id
    left join OFER_DB.DBT_ds.stripe_customers c on s.customer_id = c.id
    left join OFER_DB.DBT_ds.stripe_products pr on p.product = pr.id
    where s.status = 'active'
    order by s.start_date desc
  );

