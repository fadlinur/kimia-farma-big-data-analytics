-- Query utama penggabungan tabel Kimia Farma di BigQuery
CREATE OR REPLACE TABLE `rakamin-kf-analytics-505311.kimia_farma.analisa_tabel` AS
SELECT 
    t.transaction_id,
    t.date,
    t.branch_id,
    c.branch_name,
    t.nett_sales,
    t.nett_profit
FROM 
    `rakamin-kf-analytics-505311.kimia_farma.kf_final_transaction` t
LEFT JOIN 
    `rakamin-kf-analytics-505311.kimia_farma.kf_kantor_cabang` c ON t.branch_id = c.branch_id;
