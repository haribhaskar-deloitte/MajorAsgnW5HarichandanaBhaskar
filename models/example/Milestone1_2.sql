{{ config(materialized='table') }}

SELECT
CODE,
MIN(NAV) as minimum,
MAX(NAV) as maximum
FROM "MAJORASGNW5"."MAJORASGNSCHEMA"."NAVHISTORY" 
GROUP BY CODE
