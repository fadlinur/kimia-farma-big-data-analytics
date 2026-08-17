# Kimia Farma Big Data Analytics Project

Proyek analisis data untuk mengevaluasi performa bisnis PT Kimia Farma Tbk menggunakan BigQuery dan Looker Studio.

## 🛠️ Tech Stack
* **Google BigQuery:** Pengolahan data & SQL query.
* **Looker Studio:** Visualisasi dashboard interaktif.

## 📂 Struktur Dataset di BigQuery
* `kf_final_transaction`: Data transaksi penjualan.
* `kf_inventory`: Data inventaris stok.
* `kf_kantor_cabang`: Informasi cabang.
* `kf_product`: Data produk.
* `analisa_tabel`: Master tabel gabungan.

## 🧹 Data Quality Control (Pengecekan Duplikat & Missing Values)
Sebelum melakukan penggabungan tabel dan analisis lanjutan, dilakukan tahap *data validation* menggunakan Google BigQuery untuk memastikan integritas data:

1. **Pengecekan *Missing Values* (Nilai Kosong):**
   * Menggunakan query pemfilteran kondisi `IS NULL` pada setiap kolom penting (seperti `transaction_id`, `date`, `branch_id`, hingga `price` dan `rating`).
   * **Hasil:** Query mengembalikan hasil kosong (*"There is no data to display"*), yang menandakan bahwa **tidak ada data yang hilang/kosong** pada tabel transaksi utama.

2. **Pengecekan Data Duplikat:**
   * Menggunakan fungsi `GROUP BY` pada kolom `transaction_id` dengan klausa `HAVING COUNT(*) > 1` untuk mendeteksi ID transaksi yang tercatat ganda.
   * **Hasil:** Query mengembalikan hasil kosong, yang membuktikan bahwa **seluruh data transaksi bersifat unik** dan bebas dari duplikasi.

## 📊 Dashboard
* https://datastudio.google.com/reporting/1c662792-c6d6-4715-8c85-aeba5575d8b7
