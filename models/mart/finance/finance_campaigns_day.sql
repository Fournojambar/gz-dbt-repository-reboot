SELECT
date_date,
ROUND(f.operational_margin - c.ads_cost, 2) AS ads_margin,
f.average_basket,
f.operational_margin,
c.ads_cost,
c.ads_impression,
c.ads_clicks,
f.quantity,
f.revenue,
f.purchase_cost,
f.margin,
f.shipping_fee,
f.logcost
FROM {{ref("int_campaigns_day")}} c
FULL JOIN {{ref("finance_days")}} f
USING (date_date)
ORDER BY date_date DESC