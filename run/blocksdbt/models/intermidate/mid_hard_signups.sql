
  create or replace   view OFER_DB.dbt.mid_hard_signups
  
   as (
    with submited_pages as (
    select * from OFER_DB.dbt_stg.stg_web_pages 
    where url like '%submitted=true%'
    qualify  ROW_NUMBER() OVER (PARTITION BY user_id order by user_id) = 1
) 
select s.uuid_ts, s.campaign_id, s.ad_group_id, s.keyword, s.anonymous_id, 
        iff(sp.user_id is null, '', s.goal) goal , 
        iff(sp.user_id is null, false, s.is_work) is_work, 
        iff(sp.user_id is null, 0, 1) hard_signup  
    from               OFER_DB.dbt.mid_signups  s
    left join submited_pages as sp on s.user_id = sp.user_id
  );

