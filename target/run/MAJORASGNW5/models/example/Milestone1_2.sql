

      create or replace transient table MAJORASGNW5.MAJORASGNSCHEMA.Milestone1_2  as
      (

SELECT
CODE,
MIN(NAV) as minimum,
MAX(NAV) as maximum
FROM "MAJORASGNW5"."MAJORASGNSCHEMA"."NAVHISTORY" 
GROUP BY CODE
      );
    