// Saat membuat aplikasi, menggunakan Environment Variable adalah salah satu teknik agar konfigurasi aplikasi bisa diubah secara dinamis
// Dengan menggunakan environment variable, kita bisa mengubah-ubah konfigurasi aplikasi, tanpa harus mengubah kode
// aplikasinya lagi

// Download Docker Image
docker image pull mongo:latest

// Menambah Environment Variable
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=aidil --env MONGO_INITDB_ROOT_PASSWORD=aidil mongo:latest
