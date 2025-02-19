
  create or replace   view OFER_DB.dbt_MART.daily_arr_trends
  
   as (
    WITH daily_arr AS (
  SELECT
    DATE_TRUNC('day', start_date) AS day,
    SUM(CASE 
      WHEN interval = 'month' THEN amount 
      WHEN interval = 'year' THEN amount /  12
      ELSE 0
    END) * 12 as arr
  FROM OFER_DB.dbt_MID.mid_subscriptions
  WHERE status = 'active'
  GROUP BY 1
  ORDER BY 1
)

SELECT 
  day,
  arr,
  arr - LAG(arr) OVER (ORDER BY day) as arr_change,
  ROUND(((arr / LAG(arr) OVER (ORDER BY day) - 1) * 100), 2) as growth_rate
FROM daily_arr
  );

