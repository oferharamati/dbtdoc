
  create or replace   view OFER_DB.dbt_MART.customers_cohorts
  
   as (
    WITH cohorts AS (
  SELECT
    DATE_TRUNC('day', start_date) as cohort_day,
    email customer_id,
    MIN(amount) as initial_mrr
  FROM OFER_DB.dbt_MID.mid_subscriptions
  WHERE status = 'active'
  GROUP BY 1, 2
)

SELECT
  cohort_day,
  COUNT(DISTINCT customer_id) as customers,
  SUM(initial_mrr) * 12 as cohort_arr,
  AVG(initial_mrr) * 12 as avg_customer_arr
FROM cohorts
GROUP BY 1
ORDER BY 1
  );

