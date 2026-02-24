<h1 align="center">GlowUp 💄</h2>

<p align="center"><em>Organize your beauty. Elevate your glow.</em></p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/4995b0e5-0e61-47c6-86ad-79eafdb80047" width="75%">
</p>

## Disusun Oleh 

| **Nama**                     | **NIM**     | **Kelas**            |
|------------------------------|------------|-------------------|
| Maifariza Aulia Dyas         | 2409116032 | Sistem Informasi A |

## Deskripsi Program

**GlowUp** adalah aplikasi mobile berbasis Flutter yang dibuat untuk membantu mencatat dan mengatur produk kosmetik dalam bentuk _checklist_.

Di aplikasi ini, pengguna bisa menambahkan produk kosmetik yang dimiliki, lalu menandainya dengan _checkbox_ sebagai penanda status produk. Ketika produk dicentang, tampilannya akan berubah warna sebagai indikator bahwa produk tersebut sudah ditandai. Selain itu, pengguna juga bisa mengedit data produk jika ada kesalahan atau ingin diperbarui, serta menghapus produk yang sudah tidak digunakan.

Aplikasi ini menerapkan fitur _Create_, _Read_, _Delete_, serta nilai tambah berupa _Update_ dan navigasi multi halaman.

## Fitur Aplikasi

╰┈➤ Tambah Produk (_Create_)

Di fitur ini, pengguna bisa menambahkan produk kosmetik dengan mengisi nama produk, kategori, dan harga. Setelah tombol tambah ditekan, produk langsung muncul di daftar.

╰┈➤ Tampilkan Daftar Produk (_Read_)

Produk akan ditampilkan dalam bentuk daftar. Setiap item menampilkan nama produk, kategori, dan harga. Di bagian kiri terdapat checkbox untuk menandai status produk, serta tombol edit dan hapus di sisi kanan.

Jika produk sudah dicentang, maka warna nama produk akan berubah menjadi pink sebagai penanda bahwa produk tersebut sudah ditandai.

╰┈➤ Hapus Produk (_Delete_)

Di bagian ini, pengguna bisa menghapus produk yang sudah tidak dipakai atau sudah habis. Tinggal tekan tombol hapus di item produk, lalu produk akan langsung hilang dari daftar.



**🌟 Nilai Tambah**

╰┈➤ Edit Produk (_Update_)

Jika ada data yang salah input (misalnya nama atau harga), pengguna bisa edit produk tersebut. Setelah tombol edit ditekan, data produk bisa diperbarui dan hasilnya langsung tampil di daftar.

╰┈➤ Navigasi Multi Halaman

Aplikasi ini menggunakan navigasi agar tampilan lebih rapi dan mudah digunakan. Halaman daftar produk dipisahkan dengan halaman form tambah atau edit produk.

Jadi, pengguna dapat berpindah halaman saat ingin menambah atau mengedit data, lalu kembali lagi ke halaman daftar setelah selesai.

## Widget yang Digunakan

| **WIDGET** | **KETERANGAN** |
|--------|------------|
| StatelessWidget | Digunakan untuk struktur dasar aplikasi yang tidak membutuhkan perubahan state. |
| StatefulWidget | Digunakan pada HomePage dan FormPage karena halaman ini membutuhkan perubahan data (tambah, edit, hapus, centang produk). |
| Scaffold | Menyediakan struktur dasar seperti AppBar, body, dan FloatingActionButton. |
| AppBar | Digunakan untuk menampilkan judul aplikasi di bagian atas layar. |
| Text | Digunakan untuk menampilkan informasi seperti nama produk, kategori, dan harga. |
| TextField | Menggunakan controller untuk mengambil dan mengelola input pengguna. |
| ElevatedButton | Digunakan sebagai tombol aksi seperti tambah produk atau simpan data. |
| ListView | Digunakan untuk menampilkan daftar produk secara dinamis. |
| ListTile | Digunakan untuk menyusun isi setiap item produk agar lebih rapi dan terstruktur. |
| Card / Container | Digunakan untuk membungkus setiap produk dalam bentuk box agar tampil lebih clean dan terpisah. |
| Column & Row | Digunakan untuk mengatur tata letak widget secara vertikal dan horizontal. |
| Checkbox | Digunakan untuk menandai status produk, misalnya sudah tersedia atau belum. |
| IconButton | Digunakan sebagai tombol edit dan hapus pada setiap produk. |
| Navigator | Digunakan bersama MaterialPageRoute untuk berpindah halaman dan mengirim data kembali ke halaman sebelumnya. |
| setState() | Digunakan untuk memperbarui tampilan ketika data berubah, misalnya setelah menambah, mengupdate atau menghapus produk. |
| MaterialApp | Digunakan sebagai root widget aplikasi untuk mengatur tema, navigasi, dan struktur dasar aplikasi Flutter. |
| FloatingActionButton | Digunakan sebagai tombol aksi utama untuk menambahkan produk baru ke dalam daftar. |
| SnackBar | Digunakan untuk menampilkan notifikasi sementara kepada pengguna, misalnya ketika produk berhasil dihapus. |
| ScaffoldMessenger | Digunakan untuk menampilkan SnackBar dan mengelola pesan notifikasi pada halaman aplikasi. |

## Alur Aplikasi

Aplikasi GlowUp ini dipakai untuk mengelola daftar produk kecantikan. Di dalamnya, kamu bisa melihat daftar produk, menambah produk baru, mengedit produk, menghapus produk, dan menandai produk dengan checkbox.

1. Membuka aplikasi & melihat daftar produk

   Saat aplikasi dijalankan, pengguna akan langsung masuk ke halaman utama yang menampilkan daftar produk **GlowUp** yang sudah tersedia. Produk ditampilkan dalam bentuk list, yang berisi nama produk, kategori, dan harga. Jika jumlah produk cukup banyak, pengguna bisa scroll layar kebawah untuk melihat item lainnya. Tampilan ini menjadi pusat utama pengelolaan data karena semua produk yang ditambahkan, diedit, atau dihapus akan muncul dan diperbarui di halaman ini.
