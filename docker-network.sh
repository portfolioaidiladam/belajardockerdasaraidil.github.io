// Saat kita membuat container di docker, secara default container akan saling terisolasi satu sama lain,
// jadi jika kita mencoba memanggil antar container, bisa dipastikan bahwa kita tidak akan bisa melakukannya
// Docker memiliki fitur Network yang bisa digunakan untuk membuat jaringan di dalam Docker

// Melihat Network
docker network ls

// Membuat Network
docker network create --driver bridge contohnetwork

// Menghapus Network
docker network rm contohnetwork
