

      create or replace transient table finalassessment_db.final.milestone1_1  as
      (

select a."NAME",month(n."nav_date") as month,avg(n."nav") as avg_nav,avg(n."repurchase_price") as avg_repurchase,
avg(n."sale_price") as avg_sale_price from "FINALASSESSMENT_DB"."FINAL"."NAVHISTORY" as n,
"FINALASSESSMENT_DB"."FINAL"."AMC" as a,
"FINALASSESSMENT_DB"."FINAL"."MUTUALFUND" as m
where m."amc_id"=a."ID"
and m."code"=n."code" group by a."NAME",month(n."nav_date")
      );
    