
  create or replace   view OFER_DB.DBT.current_metrics
  
   as (
    WITH current_metrics AS (
  SELECT
    COUNT(DISTINCT email) as total_customers,
    SUM(CASE 
      WHEN interval = 'month' THEN amount
      WHEN interval = 'year' THEN amount/ 12
      ELSE 0
    END) * 12 as current_arr,
    AVG(CASE 
      WHEN interval = 'month' THEN amount 
      WHEN interval = 'year' THEN amount  / 12
      ELSE 0
    END) * 12 as avg_arr_per_customer
  FROM OFER_DB.DBT_intermediate.subscriptions
  WHERE status = 'active'
)

SELECT 
  total_customers,
  ROUND(current_arr, 2) as current_arr,
  ROUND(avg_arr_per_customer, 2) as avg_arr_per_customer
FROM current_metrics
  );

