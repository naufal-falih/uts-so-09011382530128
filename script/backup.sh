#!/bin/bash
# Nama: NAUFAL FALIH AKBAR
# NIM: 09011382530128
# Kelas: Sistem Operasi

# 1. Variabel Direktori dan File
SRC=~/data_09011382530128
DEST=~/backup_09011382530128
LOG=$DEST/backup.log
TANGGAL=$(date +"%Y%m%d_%H%M%S")
ARSIFNAMA=backup_09011382530128_$TANGGAL.tar.gz

# 2. Buat direktori tujuan backup jika belum ada
mkdir -p "$DEST"

# 3. Cari semua file .txt dan simpan daftarnya ke file sementara
DLIST=$(mktemp)
find "$SRC" -type f -name "*.txt" > "$DLIST"
JUMLAH=$(wc -l < "$DLIST")

# 4. Arsipkan dan kompres file .txt tersebut
tar -czf "$DEST/$ARSIFNAMA" -T "$DLIST" 2>/dev/null
rm "$DLIST"

# 5. Verifikasi arsip tanpa mengekstraknya
tar -tzf "$DEST/$ARSIFNAMA" > /dev/null

# 6. Catat proses backup ke file log
UKURAN=$(du -h "$DEST/$ARSIFNAMA" | awk '{print $1}')
echo "$(date +"%Y-%m-%d %T") | $ARSIFNAMA | $JUMLAH | $UKURAN" >> "$LOG"
