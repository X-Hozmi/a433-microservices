# Melakukan build sebuah Docker image menggunakan Dockerfile yang tadi dibuat dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar Docker image yang tersedia di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
# Format untuk GitHub Packages: ghcr.io/<username>/<repo>/<image-name>:<tag>
docker tag item-app:v1 ghcr.io/x-hozmi/a433-microservices/item-app:v1

# Login ke GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u x-hozmi --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/x-hozmi/a433-microservices/item-app:v1
