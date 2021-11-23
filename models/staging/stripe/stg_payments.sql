select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status as payment_status,

    {{ cents_to_dollars('amount', 4) }} as amount,
    created as created_date

from dbt_carolinemiller98.stripe_payments 