# Mengambil base image bernama node dari Docker Hub dengan tag 14
FROM node:14

# Membuat directory baru bernama app
WORKDIR /app

# Menyalin source (titik pertama) ke destination / WORKDIR (titik kedua)
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port yang akan digunakan oleh aplikasi
EXPOSE 8080

# Instruksi untuk mengeksekusi perintah saat Docker Image telah dijalankan sebagai container
CMD ["npm", "start"]