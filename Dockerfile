# Menggunakan Node.js versi 14 sebagai base image
FROM node:14

# Menetapkan direktori kerja di dalam container
WORKDIR /app

# Menyalin seluruh source code ke dalam container
COPY . .

# Menginstal dependencies
RUN npm install

# Mengekspos port 3001 (port yang digunakan oleh aplikasi)
EXPOSE 3001

# Menjalankan aplikasi
CMD ["npm", "start"]
