{{ config(materialized='table') }}

select f."CATEGORY" from "FINALASSESSMENT_DB"."FINAL"."NAVHISTORY" n,"FINALASSESSMENT_DB"."FINAL"."FUNDCATEGORY"f,
"FINALASSESSMENT_DB"."FINAL"."MUTUALFUND" m where m."category_id"=f."ID"
and m."code"=n."code" and n."nav_date" >=dateadd(day,-90,getdate()) order by f."CATEGORY" desc
