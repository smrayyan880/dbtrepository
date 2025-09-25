{% snapshot ticket_tracking %}
    {{
        config(
            target_schema='dev_schema',
            target_database='db_sales',
            unique_key='ticket_id',
            strategy='check',
            check_cols=['Ticket_status']
        )
    }}

    select * from {{ ref('ticket_status') }}
 {% endsnapshot %}