// Volume yang sudah kita buat, bisa kita gunakan di container
// Keuntungan menggunakan volume adalah, jika container kita hapus, data akan tetap aman di volume

//Membuat Volume
docker volume create mongodata

// Container Volume
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=aidil --env MONGO_INITDB_ROOT_PASSWORD=aidil mongo:latest

docker container start mongovolume
docker container stop mongovolume

docker container rm mongovolume

docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=aidil --env MONGO_INITDB_ROOT_PASSWORD=aidil mongo:latest
