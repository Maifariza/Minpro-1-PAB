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

   Saat aplikasi dijalankan, pengguna akan langsung masuk ke halaman utama yang menampilkan daftar produk **GlowUp** yang sudah tersedia. Produk ditampilkan dalam bentuk list, yang berisi nama produk, kategori, dan harga. Jika jumlah produk cukup banyak, pengguna bisa scroll layar kebawah untuk melihat item lainnya. Tampilan ini menjadi halaman utama pengelolaan data, karena semua produk yang ditambahkan, diedit, atau dihapus akan muncul dan diperbarui di halaman ini juga.

   <img width="1919" height="1030" alt="image" src="https://github.com/user-attachments/assets/5a52096d-0283-4cc2-9f6c-75c922dfbc99" />

---

2. Menambahkan produk baru

   Jika pengguna ingin menambahkan produk baru, cukup menekan tombol tambah (+) yang berada di pojok kanan bawah layar yang saya tandai lingkaran merah ini.

   <img width="1919" height="1029" alt="Screenshot 2026-02-24 143721" src="https://github.com/user-attachments/assets/351ebb89-483e-4185-99fe-a0bdc81dd2b9" />

   Setelah tombol tersebut ditekan, aplikasi akan membuka halaman form. Di halaman ini, pengguna diminta untuk mengisi nama produk, kategori, dan harga. Setelah semua data diisi dengan benar, pengguna menekan tombol “Tambah” untuk menyimpan produk tersebut.

   Nah disini saya mencoba menambah produk Cleansing Oil. Saya memasukkan nama produk, kategori, dan juga harga nya. 

   <img width="1919" height="937" alt="image" src="https://github.com/user-attachments/assets/5deb615f-f086-4a63-99e0-ce4219070391" />

   Setelah itu, klik tombol tambah yg ada di bawahnya. Setelah disimpan, aplikasi akan kembali ke halaman utama dan produk yang baru saja ditambahkan akan langsung muncul di daftar.

   <img width="1919" height="940" alt="image" src="https://github.com/user-attachments/assets/edc39319-f5b0-4c9a-93b1-9f5430afee5d" />

---

3. Mengedit produk

   Untuk mengubah data produk yang sudah ada, pengguna dapat menekan ikon edit pada produk yang diinginkan. Disini saya ingin mengedit di produk Lip Balm. Saya klik tombol edit yang ada di kanan (ditandai warna merah).

   <img width="1919" height="944" alt="Screenshot 2026-02-24 144816" src="https://github.com/user-attachments/assets/82a7913c-72b9-4145-bb94-724e37ff527b" />

   Setelah itu, aplikasi kemudian akan membuka halaman form yang sama seperti saat menambahkan produk, namun data sebelumnya sudah otomatis terisi. Pengguna tinggal memperbarui bagian yang diperlukan, lalu menekan tombol “Simpan”.

   <img width="1918" height="943" alt="image" src="https://github.com/user-attachments/assets/a6da44d0-412c-44b0-a225-f3037729ef9a" />

   Nah, disini saya mengupdate harga lip balm yang awalnya 160.000 kini mau saya update menjadi 180.000. Setelah selesai, klik tombol simpan.

   <img width="1919" height="934" alt="image" src="https://github.com/user-attachments/assets/93105179-2b73-48a9-9860-5a922c52be22" />
   
   Setelah itu, aplikasi akan kembali ke halaman utama dan data produk akan diperbarui sesuai perubahan yang dilakukan.

   <img width="1915" height="940" alt="image" src="https://github.com/user-attachments/assets/3945b5bf-3c70-4ec5-8401-eab3235408bc" />

---

4. Menghapus produk

   Jika pengguna ingin menghapus suatu produk dari daftar, cukup menekan ikon hapus pada produk tersebut. 

   <img width="1919" height="941" alt="Screenshot 2026-02-24 145558" src="https://github.com/user-attachments/assets/d1e6ae7b-35be-47b3-a433-e2f9af47ae31" />
   
   Produk akan langsung dihapus dari daftar, dan aplikasi akan menampilkan notifikasi singkat sebagai tanda bahwa penghapusan berhasil dilakukan.

   <img width="1919" height="948" alt="image" src="https://github.com/user-attachments/assets/a5312479-b67a-442e-8847-d4025e5146e8" />

---

5. Menandai produk dengan checkbox

   Pada setiap produk terdapat checkbox yang bisa digunakan untuk menandai status tertentu. Pengguna dapat mencentang checkbox tersebut sesuai kebutuhan, misalnya sebagai tanda bahwa produk sudah dicek atau sudah tersedia. Checkbox ini dapat diaktifkan atau dinonaktifkan kapan saja, dan perubahan tersebut langsung terlihat di tampilan utama. Ketika pengguna menekan checkbox, warna pada produk akan berubah warna menjadi pink.

   <img width="1919" height="944" alt="image" src="https://github.com/user-attachments/assets/71a17a47-95eb-4c85-9f0a-cb5a0424ada0" />



