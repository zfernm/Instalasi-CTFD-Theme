# Instalasi CTFd Theme

Skrip ini bertujuan untuk mempermudah instalasi berbagai theme pada platform CTFd secara otomatis. 

## 📌 Cara Instalasi

### 1. Clone Repository
Mulai dengan meng-clone repository dari GitHub ke dalam direktori `/root`:
```bash
git clone git@github.com:zfernm/Instalasi-CTFD-Theme.git
```

### 2. Masuk ke Direktori Repository
Setelah cloning selesai, masuk ke dalam folder repository:
```bash
cd Instalasi-CTFD-Theme
```

### 3. Pindahkan Skrip ke Direktori CTFd
Pindahkan skrip instalasi ke dalam direktori CTFd:
```bash
mv Instal_CTFD_Themes.sh ../CTFd
```

### 4. Masuk ke Direktori CTFd
Pindah ke direktori CTFd untuk menjalankan skrip:
```bash
cd ..
cd CTFd
```

### 5. Beri Izin Eksekusi
Pastikan skrip memiliki izin eksekusi sebelum dijalankan:
```bash
chmod +x Instal_CTFD_Themes.sh
```

### 6. Jalankan Skrip Instalasi
Terakhir, jalankan skrip untuk memulai instalasi theme CTFd:
```bash
./Instal_CTFD_Themes.sh
```

### OUTPUT
![SCREENSHOOT OUTPUT](<Screenshot Output Instalasi CTFD Theme.png>)


## 🔥 Fitur Skrip
- Menampilkan banner keren sebelum instalasi.
- Memungkinkan pengguna memilih theme yang ingin diinstal atau menginstal semua theme sekaligus.
- Otomatis melakukan restart layanan Docker setelah instalasi.
- Mempermudah proses instalasi tanpa perlu konfigurasi manual.

---

### Dikembangkan oleh: **[zfernm]([https://github.com/zfernm](https://www.linkedin.com/in/samuel-hamonangan-s-099604255/))**

