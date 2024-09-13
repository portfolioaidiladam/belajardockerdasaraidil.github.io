// pakai terminalnya ubuntu ya
// Melihat Container berjalan dan tidak berjalan
docker container ls -a
// Melihat Container berjalan saja
docker container ls

// Membuat Container
docker container create --name contohredis redis:latest

docker container create --name contohredis2 redis:latest

// Menjalankan Container
docker container start contohredis
docker container start contohredis2

// Menghentikan Container
Menghentikan Container
docker container stop contohredis
docker container stop contohredis2

// Menghapus Container
docker container rm contohredis
docker container rm contohredis2
