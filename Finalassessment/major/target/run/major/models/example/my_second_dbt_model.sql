
  create or replace  view finalassessment_db.final.my_second_dbt_model
  
   as (
    -- Use the `ref` function to select from other models

select *
from finalassessment_db.final.my_first_dbt_model
where id = 1
  );
