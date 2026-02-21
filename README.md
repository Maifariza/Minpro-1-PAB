<h1 align="center">GlowUp 💄</h2>

<p align="center"><em>Organize your beauty. Elevate your glow.</em></p>

## Disusun Oleh 

| **Nama**                     | **NIM**     | **Kelas**            |
|------------------------------|------------|-------------------|
| Maifariza Aulia Dyas         | 2409116032 | Sistem Informasi A |

## Deskripsi Program

**GlowUp** adalah aplikasi mobile berbasis Flutter yang dibuat untuk membantu mencatat dan mengatur produk kosmetik dalam bentuk _checklist_.

Di aplikasi ini, pengguna bisa menambahkan produk kosmetik yang dimiliki, lalu menandainya dengan _checkbox_ untuk menunjukkan apakah produk tersebut masih tersedia atau sudah habis. Jadi bukan cuma daftar biasa, tapi benar-benar bisa dipantau statusnya. Selain itu, pengguna juga bisa mengedit data produk kalau ada yang salah atau ingin diperbarui, serta menghapus produk yang sudah tidak dipakai.

Aplikasi ini dibuat dengan menerapkan fitur _Create_, _Read_, _Delete_, serta nilai tambah berupa _Update_ dan navigasi multi halaman.

## Fitur Aplikasi

╰┈➤ Tambah Produk (_Create_)

Di fitur ini, pengguna bisa menambahkan produk kosmetik dengan mengisi nama produk, kategori, dan harga. Setelah tombol tambah ditekan, produk langsung muncul di daftar.

╰┈➤ Tampilkan Daftar Produk (_Read_)

Produk akan ditampilkan dalam bentuk daftar. Setiap item menampilkan nama produk, kategori, dan harga. Di bagian kiri terdapat checkbox untuk menandai status produk, serta tombol edit dan hapus di sisi kanan.

╰┈➤ Hapus Produk (_Delete_)

Di bagian ini, pengguna bisa menghapus produk yang sudah tidak dipakai atau sudah habis. Tinggal tekan tombol hapus di item produk, lalu produk akan langsung hilang dari daftar.

---

**🌟 Nilai Tambah**

╰┈➤ Edit Produk (_Update_)

Jika ada data yang salah input (misalnya nama atau harga), pengguna bisa edit produk tersebut. Setelah tombol edit ditekan, data produk bisa diperbarui dan hasilnya langsung tampil di daftar.

╰┈➤ Navigasi Multi Halaman

Aplikasi ini memakai navigasi supaya tampilan lebih rapi. Jadi, halaman daftar produk dipisah dengan halaman form tambah/edit produk. Pengguna bisa pindah halaman dengan tombol yang disediakan, lalu kembali lagi ke halaman daftar setelah selesai.

---

## Widget yang Digunakan

| **WIDGET** | **KETERANGAN** |
|--------|------------|
| StatelessWidget | Digunakan untuk struktur dasar aplikasi yang tidak membutuhkan perubahan state. |
| StatefulWidget | Digunakan untuk halaman utama karena aplikasi ini membutuhkan perubahan data (seperti tambah, edit, dan hapus produk). |
| Scaffold | Digunakan sebagai kerangka utama halaman, yang berisi AppBar dan body. |
| AppBar | Digunakan untuk menampilkan judul aplikasi di bagian atas layar. |
| Text | Digunakan untuk menampilkan informasi seperti nama produk, kategori, dan harga. |
| TextField | Digunakan pada form input untuk memasukkan data produk. |
| ElevatedButton | Digunakan sebagai tombol aksi seperti tambah produk atau simpan data. |
| ListView | Digunakan untuk menampilkan daftar produk secara dinamis. |
| ListTile | Digunakan untuk menyusun isi setiap item produk agar lebih rapi dan terstruktur. |
| Card / Container | Digunakan untuk membungkus setiap produk dalam bentuk box agar tampil lebih clean dan terpisah. |
| Column & Row | Digunakan untuk mengatur tata letak widget secara vertikal dan horizontal. |
| Checkbox | Digunakan untuk menandai status produk, misalnya sudah dibeli atau belum. |
| IconButton | Digunakan sebagai tombol edit dan hapus pada setiap produk. |
| Navigator | Digunakan untuk berpindah antar halaman, seperti dari halaman daftar produk ke halaman tambah atau edit produk. |
| setState() | Digunakan untuk memperbarui tampilan ketika data berubah, misalnya setelah menambah atau menghapus produk. |
