// Saat membuat container, secara default dia akan menggunakan semua CPU dan Memory yang diberikan ke Docker
// (Mac dan Windows), dan akan menggunakan semua CPU dan Memory yang tersedia di sistem Host (Linux)

// Menambah Resource Limit
docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest

// Melihat Container berjalan dan tidak berjalan
docker container ls -a

// Menjalankan Container
docker container start smallnginx

// Container Stats
docker container stats