
  create or replace   view OFER_DB.dbt_MART.two_month_arr
  
   as (
    with two_month AS ( 
    SELECT
        DATEADD(day, -(seq4() + 1), current_date()) AS date
    FROM
        TABLE(GENERATOR(ROWCOUNT => 60))
    WHERE
        DATEADD(day, -(seq4() +1),current_date()) <= current_date()

)
SELECT s.*, s.amount*12 arr,   ds.date FROM two_month ds, OFER_DB.dbt_MID.mid_subscriptions s
where s.start_date <= ds.date
  );

