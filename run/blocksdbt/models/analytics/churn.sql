
  create or replace   view OFER_DB.DBT.churn
  
   as (
    WITH churned AS (
  SELECT
    DATE_TRUNC('day', canceled_at) as churn_day,
    COUNT(DISTINCT email) as churned_customers,
    SUM(amount) * 12 as churned_arr
  FROM OFER_DB.DBT_intermediate.subscriptions
  WHERE status = 'canceled'
  GROUP BY 1
),
active AS (
  SELECT
    DATE_TRUNC('day', start_date) as day,
    COUNT(DISTINCT email) as total_customers,
    SUM(amount) * 12 as total_arr
  FROM OFER_DB.DBT_intermediate.subscriptions
  WHERE status = 'active'
  GROUP BY 1
)

SELECT
  a.day,
  COALESCE(c.churned_customers, 0) as churned_customers,
  ROUND((COALESCE(c.churned_customers, 0)::float / a.total_customers * 100), 2) as churn_rate,
  COALESCE(c.churned_arr, 0) as churned_arr,
  ROUND((COALESCE(c.churned_arr, 0) / a.total_arr * 100), 2) as arr_churn_rate
FROM active a
LEFT JOIN churned c ON a.day = c.churn_day
ORDER BY 1
  );

