with 

source as (

    select * from {{ source('stripe', 'payments') }}

),

renamed as (

    select
        ID as payment_id,
        ORDERID as order_id,
        PAYMENTMETHOD as payment_method,
        STATUS as payment_status,
        AMOUNT as payment_amount,
        CREATED as payment_created

    from source

)

select * from renamed