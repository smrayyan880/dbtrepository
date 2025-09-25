{{
    config(
        materialized='ephemeral'
    )
}}
select customer_id,min(order_date) as first_order,max(order_date) as recent_order,
        count(*) as number_of_orders from {{ ref('stg_orders') }} group by 1