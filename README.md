## Anggota Kelompok

| Nama Kelompok       | Anggota                               |
| :------------------ | :------------------------------------ |
| **[Kelompok 6]** | Exel Pratama (2211083041)                    |
|                     | M. Arrazi Agazali (2211082026)                    |
|                     | M. Zidhan Prasetyo (2211083012)                    |
|           **TRPL 3C**          | Rifko Ahmad (2211081026)                    |


---

# Inven BS

Aplikasi inventaris barang sekolah menggunakan Framework Laravel 10. Aplikasi ini cocok untuk digunakan untuk di sekolah.

Beberapa CRUD menggunakan modal dan AJAX untuk pengambilan data agar mengurangi penggunaan pindah halaman.


### Fitur

-   CRUD Data Barang
-   Import/export excel barang
-   Print barang (seluruh/individual)
-   CRUD Data Perolehan
-   CRUD Data Ruangan
-   CRUD Data Pengguna
-   Pengaturan Profil


### Langkah-langkah instalasi

-   Clone repository ini

```bash
$ git clone https://github.com/mrizkimaulidan/inven-bs.git
```

-   Install seluruh packages yang dibutuhkan

```bash
$ composer install
```

-   Siapkan database dan atur file .env sesuai dengan konfigurasi Anda

-   Masukan nama sekolah pada konfigurasi .env untuk menampilkan nama sekolah pada print barang. Berikan tanda kutip jika nama sekolah mengandung spasi

Contoh:

```
NAMA_SEKOLAH="SD Negeri 001 Ciledug"
```

-   Jika sudah, migrate seluruh migrasi dan seeding data

```bash
$ php artisan migrate --seed
```

-   Jalankan local server

```
$ php artisan serve
```

-   User default aplikasi untuk login

Administrator

```
Email       : admin@mail.com
Password    : secret
```

Staff TU (Tata Usaha)

```
Email       : stafftu@mail.com
Password    : secret
```

### Dibuat dengan

-   [Laravel](https://laravel.com) - Web Framework
