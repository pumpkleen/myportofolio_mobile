Nama: Cheryl Mahira Indarto
Npm: 2506606093
Kelas: PBP A

### Tugas 7

**1. Konsep Widget Tree dan Hubungan Parent-Child**

Widget Tree pada Flutter adalah struktur hierarkis dari seluruh widget yang saling tersusun untuk membangun antarmuka pengguna (UI). Konsep hubungan parent-child bekerja dengan cara widget induk (seperti Column, Row, atau Container) membungkus dan mengontrol tata letak serta batasan ukuran (constraints) dari widget anak (seperti Text atau Icon) yang ada di dalamnya. Perubahan pada induk akan mengalir ke anak-anaknya, membentuk kerangka aplikasi yang saling terhubung dari root hingga ke elemen paling kecil di layar.


**2. Widget yang Digunakan dalam Proyek dan Fungsinya**

**MaterialApp:** Widget utama pengatur konfigurasi global aplikasi seperti judul dan tema warna.
**Scaffold:** Menyediakan kerangka visual dasar halaman aplikasi, menampung elemen struktural seperti app bar dan body.
**AppBar:** Menampilkan bilah navigasi di bagian atas layar sebagai tempat judul halaman ("MyPortfolio").
**Padding:** Memberikan ruang kosong (jarak dalam) di sekeliling widget anaknya agar tidak menempel ke tepi layar.
**Column:** Mengatur tata letak widget anak-anaknya secara garis lurus vertikal (dari atas ke bawah).
**Row:** Mengatur tata letak widget anak-anaknya secara garis lurus horizontal (bersebelahan dari kiri ke kanan).
**Center:** Memosisikan widget anaknya tepat di tengah ruang yang tersedia.
**SizedBox:** Memberikan jarak kosong vertikal atau horizontal dengan ukuran pasti (misalnya height: 16.0).
**GridView:** Menampilkan daftar widget (ItemCard) dalam tata letak kisi (grid) dengan jumlah kolom tertentu.
**Card:** Membuat kotak dengan efek bayangan (elevasi) bergaya Material Design untuk membungkus InfoCard.
**Container:** Kotak kosong serbaguna yang bisa dikustomisasi ukurannya, digunakan di dalam InfoCard untuk mengatur lebar kartu.
**Text:** Menampilkan rentetan tulisan dengan gaya (style) tertentu di layar, seperti NPM dan nama.
**Material:** Memberikan efek visual seperti warna latar dan lengkungan sudut (borderRadius) pada kartu menu.
**InkWell:** Memberikan area sentuh reaktif yang merespons klik (onTap) dengan efek riak air (ripple).
**Icon:** Menampilkan gambar ikon vektor standar (seperti Icons.folder atau Icons.logout).
**ScaffoldMessenger & SnackBar:** Digunakan bersamaan untuk memunculkan pesan pop-up singkat di bagian bawah layar saat tombol ditekan.

**3. Fungsi MaterialApp sebagai Root Widget**
MaterialApp berfungsi untuk mengatur konfigurasi tingkat tertinggi yang dibutuhkan untuk membangun aplikasi bergaya Material Design. Widget ini umumnya digunakan sebagai root widget karena ia menyediakan ThemeData, navigasi antarlayar routes, pelokalan bahasa, dan pengaturan global lainnya yang akan diwarisi oleh seluruh halaman dan widget di bawahnya.

**4. Perbedaan StatelessWidget dan StatefulWidget**

StatelessWidget: Bersifat statis (immutable). Tampilannya dikunci dan tidak akan berubah setelah pertama kali digambar di layar. Dalam proyek ini, MyApp, MyHomePage, InfoCard, dan ItemCard adalah StatelessWidget karena datanya (seperti NPM, nama, dan daftar tombol) sudah ditetapkan di awal dan tidak berubah saat aplikasi berjalan.
StatefulWidget: Bersifat dinamis (mutable). Memiliki objek State yang memungkinkan widget menggambar ulang dirinya sendiri ketika ada pembaruan data (menggunakan fungsi setState()).Kapan memilihnya: StatelessWidget digunakan untuk elemen UI yang datanya tetap (seperti layar beranda yang informatif).

StatefulWidget digunakan untuk elemen yang harus merespons perubahan secara langsung, seperti formulir input, checkbox, atau angka counter yang terus bertambah.

**5. Konsep BuildContext dan Penggunaannya**
BuildContext adalah objek yang menyimpan informasi tentang posisi pasti dari sebuah widget di dalam Widget Tree. Objek ini berfungsi sebagai penghubung antara widget tersebut dengan widget lain di sekitarnya. Di dalam metode build(BuildContext context), context digunakan untuk mengambil data global dari widget induk. Sebagai contoh, context digunakan untuk mengambil tema warna (Theme.of(context)), mengukur proporsi lebar layar perangkat (MediaQuery.of(context)), dan memanggil SnackBar (ScaffoldMessenger.of(context)).

**6. Hot Reload vs Hot Restart**

Hot Reload: Memuat ulang perubahan kode UI (tampilan) ke dalam sistem tanpa menghancurkan state (data) aplikasi yang sedang berjalan. Eksekusinya sangat cepat dan ideal untuk mengecek perubahan warna, teks, atau tata letak.

Hot Restart: Menghentikan aplikasi, menghapus semua memori state (mengembalikan variabel data ke nilai awal), lalu memuat ulang seluruh kode. Waktu tunggunya sedikit lebih lama dari hot reload.

Hot Restart atau Full Restart wajib dilakukan jika terdapat perubahan pada logika inisialisasi awal, perubahan variabel global, penambahan aset baru (gambar/font), atau modifikasi konfigurasi native sistem (seperti merombak pubspec.yaml, AndroidManifest.xml, atau file build lainnya).