

      create or replace transient table MAJORASGNW5.MAJORASGNSCHEMA.Milestone1_1  as
      (

select
n.CODE,
month(n.NAV_DATE) as month,
avg(n.NAV) as avg_nav,
avg(n.REPURCHASE_PRICE) as avg_repurchase,
avg(n.SALE_PRICE)as avg_sale
from "MAJORASGNW5"."MAJORASGNSCHEMA"."NAVHISTORY" n
group by n.CODE,month
      );
    