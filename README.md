# UTS Sistem Operasi

## Identitas
- **Nama**: NAUFAL FALIH AKBAR
- **NIM**: 09011382530128
- **Kelas**: Sistem Operasi

## Deskripsi
Skrip ini dirancang untuk mencari file `.txt` di direktori sumber `~/data_09011382530128`, mengompresnya menjadi format `.tar.gz` di direktori `~/backup_09011382530128`, serta mencatat log otomatis pada setiap eksekusi.

## Cara Menjalankan
1. Berikan izin eksekusi skrip:
   ```bash
   chmod +x script/*.sh
## Fitur Pengembangan
Fitur Pengembangan
 Otomasi pengulangan backup periodik menggunakan ⁠backup_loop.sh⁠.
 Integrasi alias terminal ⁠bk128⁠ untuk kemudahan eksekusi.
 ## Bukti Job Control
 $ ./script/backup_loop.sh &
[1] 1425
$ jobs -l
[1]+  1425 Running                 ./script/backup_loop.sh &
$ fg
./script/backup_loop.sh
^Z
[1]+  Stopped                 ./script/backup_loop.sh
$ bg
[1]+ ./script/backup_loop.sh &
$ ps x | grep backup_loop
 1425 pts/0    S      0:00 /bin/bash ./script/backup_loop.sh
$ kill %1
[1]+  Terminated              ./script/backup_loop.sh

## Kendala
Kendala
 Kendala: Perubahan izin eksekusi (⁠chmod +x⁠) terkadang tidak terbawa otomatis oleh Git.
 Solusi: Menjalankan ⁠chmod +x script/*.sh⁠ secara manual sebelum melakukan ⁠git add⁠ dan ⁠git commit⁠.
