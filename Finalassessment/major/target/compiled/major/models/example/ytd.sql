

/*select (max(n."nav")-min(n."nav")/ max(n."nav"))*100 as ytd
from "FINALASSESSMENT_DB"."FINAL"."NAVHISTORY" n,"FINALASSESSMENT_DB"."FINAL"."MUTUALFUND" m
where date_part(year,n."nav_date")='2019' group by m."name"*/