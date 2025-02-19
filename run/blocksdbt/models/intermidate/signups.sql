
  create or replace   view BLOCKS_DW.dbt.signups
  
   as (
    select  v.uuid_ts,
        v.campaign_id, 
        v.anonymous_id, 
        v.ad_group_id, 
        v.keyword, 
        i.user_id, 
        1 signup , 
        u.goal, 
        u.is_work
from    BLOCKS_DW.dbt.visitors v, 
        BLOCKS_DW.dbt.stg_identifies i, 
        BLOCKS_DW.dbt.stg_users u 
    where v.page_clicks = 1 and v.anonymous_id = i.anonymous_id and i.user_id = u.user_id
    qualify  ROW_NUMBER() OVER (PARTITION BY v.campaign_id, v.anonymous_id, i.user_id order by v.campaign_id, v.anonymous_id, i.user_id)  = 1
  );

