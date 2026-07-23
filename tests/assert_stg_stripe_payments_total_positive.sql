select  
    order_id,
    SUM(payment_amount) AS total_amount
FROM {{ ref('stg_stripe_payments') }}
GROUP BY order_id
HAVING SUM(payment_amount) < 0