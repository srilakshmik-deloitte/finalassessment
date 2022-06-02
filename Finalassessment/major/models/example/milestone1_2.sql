{{ config(materialized='table') }}

select a."NAME",min(n."nav_date") as date,max(n."nav") as Max_NAV,
min(n."nav") as min_nav
from "FINALASSESSMENT_DB"."FINAL"."NAVHISTORY" as n,
"FINALASSESSMENT_DB"."FINAL"."AMC" as a,
"FINALASSESSMENT_DB"."FINAL"."MUTUALFUND" as m
where m."amc_id"=a."ID"
and m."code"=n."code"
group by a."NAME"


/*select
value:"@Name" as Name,
value:"@"*/
