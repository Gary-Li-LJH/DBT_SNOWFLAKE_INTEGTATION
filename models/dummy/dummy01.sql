--select * from alpha_project_edw.raw.aisles
{{ config(
    materialized='view'
    ) }}

with raw_aisles as (
    select * from {{source('alpha_project_edw','aisles')}}
)
SELECT
    aisle_id,
    aisle
FROM
    raw_aisles