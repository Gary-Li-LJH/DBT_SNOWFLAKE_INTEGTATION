--select * from alpha_project_edw.raw.aisles
{{ config(
    materialized='table'
    ) }}

with raw_aisles as (
    select * from {{source('alpha_project_edw','aisles')}}
)
SELECT
    aisle_id,
    aisle
FROM
    raw_aisles