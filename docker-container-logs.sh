// pakai terminalnya ubuntu ya
// Kadang saat terjadi masalah dengan aplikasi yang terdapat di container,
// sering kali kita ingin melihat detail dari log aplikasinya


// bikin container
docker container create --name contohredis redis:latest
// nyalakan container
docker container start contohredis

// Melihat Container Log

docker container logs contohredis

// Melihat log secara realtime
docker container logs -f contohredis
