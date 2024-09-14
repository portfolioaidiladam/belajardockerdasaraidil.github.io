// Saat membuat aplikasi, menggunakan Environment Variable adalah salah satu teknik agar konfigurasi aplikasi bisa diubah secara dinamis
// Dengan menggunakan environment variable, kita bisa mengubah-ubah konfigurasi aplikasi, tanpa harus mengubah kode
// aplikasinya lagi

// https://hub.docker.com/_/mongo cari Environment Variables

// Download Docker Image
docker image pull mongo:latest

// Menambah Environment Variable
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=aidil --env MONGO_INITDB_ROOT_PASSWORD=aidil mongo:latest

// Melihat Container berjalan dan tidak berjalan
docker container ls -a

// Menjalankan Container
docker container start contohmongo

// Menghentikan Container
docker container stop contohmongo

