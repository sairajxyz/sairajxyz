with source as(
    select * from {{ source('jaffle_shop', 'orders1') }}
),



orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status,
        _ETL_LOADED_AT

    from source

)

select * from orders