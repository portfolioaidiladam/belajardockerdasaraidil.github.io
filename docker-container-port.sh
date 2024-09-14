
// Saat menjalankan container, container tersebut terisolasi di dalam Docker
// Artinya sistem Host (misal Laptop kita), tidak bisa mengakses aplikasi
// yang ada di dalam container secara langsung, salah satu caranya adalah harus
// menggunakan Container Exec untuk masuk ke dalam container nya.

// Download Docker Image
docker image pull nginx:latest

// Melakukan Port Forwarding
docker container create --name contohnginx --publish 8080:80 nginx:latest

// Melihat Container berjalan dan tidak berjalan
docker container ls -a

// Menjalankan Container
docker container start contohnginx

/// sudah bisa buka localhost 8080

// Menghentikan Container
docker container stop contohnginx


