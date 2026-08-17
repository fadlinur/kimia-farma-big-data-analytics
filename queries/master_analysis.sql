CREATE OR REPLACE TABLE `rakamin-kf-analytics-505311.kimia_farma.base_data` AS
SELECT 
    t.transaction_id,
    t.date,
    t.branch_id,
    c.branch_name,
    c.kota,
    c.provinsi,
    c.rating AS rating_cabang,
    t.customer_name,
    t.product_id,
    p.product_name,
    t.price AS actual_price,
    t.discount_percentage,
    t.rating AS rating_transaksi
FROM `rakamin-kf-analytics-505311.kimia_farma.kf_final_transaction` AS t
LEFT JOIN `rakamin-kf-analytics-505311.kimia_farma.kf_kantor_cabang` AS c 
    ON t.branch_id = c.branch_id
LEFT JOIN `rakamin-kf-analytics-505311.kimia_farma.kf_product` AS p 
    ON t.product_id = p.product_id;
