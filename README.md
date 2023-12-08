Implementasi ETL dan Store Procedure untuk Analisis Order Status pada Data Warehouse

Proyek ini bertujuan untuk merancang dan mengimplementasikan sebuah data Warehouse (DWH) untuk analisis order status pada bisnis tertentu. DWH ini memungkinkan pengguna untuk melihat dan menganalisis data order berdasarkan jenis status ordernya. Dalam proyek ini, saya berhasil menyelesaikan dua tugas utama : Ekstraksi, Transformasi, dan Load (ETL) data dari file Excel ke database SQL Server, serta pembuatan stored procedure untuk mempermudah analisis data.

1.	ETL dari File Excel ke Database SQL Server :
  a.	Implementasi proses ETL untuk mentransfer dta dari file Excel ke database SQL Server.
  b.	Memastikan integritas data selama proses ETL dan menangani perubahan struktur data.
  c.	Menyediakan otomatisasi untuk pembaruan data secara berkala.
2.	Store Procedure untuk Analisis Order Status :
  a.	Membuat store procedure dengan nama dbo.summary_order_status yang menerima parameter jenis status order.
  b.	Menampilkan kolom-kolom penting seperti OrderID, CustomerName, ProductName, Quantity, dan StatusOrder.
  c.	Memberikan fleksibelitas dalam menganalisis data berdasarkan jenis status order tertentu.
  d.	Meningkatkan efisiensi dalam pengambilan data dengan menyimpan logika query di dalam stored procedure.

A.	Penjelasan Awal Tentang Pentingnya Data Warehouse dan Store Procedure :
Data Warehouse adalah komponen kunci dalam pengelolaan dan analisis data untuk mendukung pengambilan keputusan bisnis. Ini memberikan keuntungan berikut :
  a.	Integrasi Data : Menggabungkan data dari berbagai sumber untuk menyediakan pandangan holistik tentang bisnis.
  b.	Performa dan Kinerja : Mempercepat waktu tanggap dan kinerja analisis dengan menyimpan data dalam format yang dioptimalkan.
  c.	Analisis Lebih Lanjut : Memungkinkan analisis data yang lebih mendalam dan kompleks untuk mendukung strategi bisnis.
Store Procedure adalah objek database yang menyimpan query SQL dan logika bisnis, memberikan manfaat berikut :
  a.	Efisiensi Kode : Mengurangi redudansi kode dengan menyimpan logika query di satu tempat.
  b.	Keamanan Data : Memberikan kontrol kses yang lebih baik dan mengurangi risiko SQL injection.
  c.	Reusabilitas : Memungkinkan penggunaan ulang logika query di berbagai bagian aplikasi.
Dengan mengintegrasikan ETL, Data Warehouse, dan Store Procedure, proyek ini memberikan solusi komprehensif untuk analisis order status yang efektif dan efisien dalam lingkungan bisnis.
