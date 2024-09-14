// Setelah melakukan backup volume ke dalam file archive, kita bisa menyimpan file archive backup
// tersebut ke tempat yang lebih aman, misal ke cloud storage

//Membuat Volume
docker volume create mongorestore
docker volume ls

// Restore Backup
docker container run --rm --name ubunturestore --mount "type=bind,source=/mnt/e/Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"
docker container ls -a mongorestore

docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=aidil --env MONGO_INITDB_ROOT_PASSWORD=aidil mongo:latest

docker container start mongorestore

