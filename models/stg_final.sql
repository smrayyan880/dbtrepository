select customers.customer_id,customers.first_name,customers.last_name,
        customers_orders.first_order,customers_orders.recent_order,
        coalesce (customers_orders.number_of_orders, 0) as number_of_orders
        from {{ ref('stg_customer') }} 
        left join {{ ref('stg_customer_orders') }}  on customers.customer_id=stg_customer_orders.customer_id
