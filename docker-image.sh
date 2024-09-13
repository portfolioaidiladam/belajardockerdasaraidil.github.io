// Docker Image mirip seperti installer aplikasi, dimana di dalam Docker Image terdapat aplikasi dan dependency
// Sebelum kita bisa menjalankan aplikasi di Docker, kita perlu memastikan memiliki Docker Image aplikasi tersebut

// Melihat Docker Image
docker image ls

// Download Docker Image
docker image pull redis:latest

// Menghapus Docker Image
docker image rm alpine:latest