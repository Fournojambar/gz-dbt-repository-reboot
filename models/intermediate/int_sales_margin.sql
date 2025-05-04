select
    s.date_date,
    s.orders_id,
    s.products_id,
    s.revenue,
    s.quantity,
    p.purchase_price,
    s.quantity * p.purchase_price as purchase_cost,
    round(s.revenue - s.quantity * p.purchase_price, 2) as margin
from {{ ref("stg_raw__sales")}} s
left join {{ ref("stg_raw__product")}} p
    using (products_id)