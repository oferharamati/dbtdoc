
  create or replace   view OFER_DB.dbt_MID.mid_funnel
  
   as (
    with alldata_fact as (
select campaign_id, ad_group_id, keyword, date(date_start) uuid_ts, impressions, clicks, average_cost, to_number(0, 38, 0) visitor , to_number(0, 38, 0) page_clicks, to_number(0, 38, 0) signup , 
        to_number(0, 38, 0) hard_signups, to_number(0, 38, 0) goalwork, to_number(0, 38, 0) work_email from OFER_DB.dbt_MID.mid_keywords_data
    union all
select campaign_id, ad_group_id, keyword,  uuid_ts, 0, 0, 0, visitor, page_clicks, 0, 0, 0, 0 from OFER_DB.dbt_MID.mid_visitors
    union all
select campaign_id, ad_group_id, keyword,  uuid_ts, 0, 0, 0, 0, 0, 
    signup, 0, 0, 0  from OFER_DB.dbt_MID.mid_signups
    union all
select campaign_id, ad_group_id, keyword,  uuid_ts, 0, 0, 0, 0 , 0, 0, hard_signup, iff(goal = 'work', 1, 0) goalwork, iff(is_work = 'true', 1, 0) work_email from OFER_DB.dbt_MID.mid_hard_signups
)

select * from alldata_fact
  );

