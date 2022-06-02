

select max(n."nav_date") as latest,f."CATEGORY" from
"FINALASSESSMENT_DB"."FINAL"."NAVHISTORY" n,"FINALASSESSMENT_DB"."FINAL"."FUNDCATEGORY" f,"FINALASSESSMENT_DB"."FINAL"."MUTUALFUND" m
where m."category_id"=f."ID"
and m."code"=n."code" group by f."CATEGORY"