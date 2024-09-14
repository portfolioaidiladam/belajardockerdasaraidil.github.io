// Setelah kita membuat Network, kita bisa menambahkan container ke network
// Container yang terdapat di dalam network yang sama bisa saling berkomunikasi (tergantung jenis driver network nya)

// Membuat Network
docker network create --driver bridge mongonetwork
docker network ls

// bikin tapi tidak di publish mau accessnya lewat webnya saja
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=aidil --env MONGO_INITDB_ROOT_PASSWORD=aidil mongo:latest

// dowload image mongo
docker image pull mongo-express:latest

// bikin container mongodb expres
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://aidil:aidil@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress

// Menghapus Container dari Network
docker network disconnect mongonetwork mongodb
docker container logs mongodbexpress

// Menambahkan Container ke Network
docker network connect mongonetwork mongodb
