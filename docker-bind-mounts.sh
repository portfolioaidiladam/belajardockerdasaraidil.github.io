// Bind Mounts merupakan kemampuan melakukan mounting (sharing) file atau folder yang terdapat di sistem host ke container yang terdapat di docker
// Fitur ini sangat berguna ketika misal kita ingin mengirim konfigurasi dari luar container, atau misal menyimpan data yang dibuat di aplikasi di dalam container ke dalam folder di sistem host
// Jika file atau folder tidak ada di sistem host, secara otomatis akan dibuatkan oleh Docker
// https://hub.docker.com/_/mongo cari Where to Store Data

// jalankannya di terminal ubuntu ya
// Melihat Container berjalan
docker container ls
// untuk container yang tidak jalan
docker container ls -a

// bikin folder mongo-data
mkdir mongo-data

// cek lokasi
pwd

// Melakukan Mounting (belum berhasil ni masih ditelusuri mungkin harus cek bind pathnya sudah benar atau tidak)
docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/mnt/e/Docker/belajar-docker-dasar/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=aidil --env MONGO_INITDB_ROOT_PASSWORD=aidil mongo:latest

// start mongo
docker container start mongodata

// melihat log jika ada error atau tidak jalan
docker logs mongodata
docker container logs mongodata

// menghapus container
docker container rm mongodata

// menghapus file didalam folder
rm -rf /mnt/e/Docker/belajar-docker-dasar/mongo-data/*

// melihat file didalam folder
ls /mnt/e/Docker/belajar-docker-dasar/mongo-data

// periksa izin dari directory host
sudo chmod -R 777 /mnt/e/Docker/belajar-docker-dasar/mongo-data

// periksa untuk debbugging kali aja errornya di mountnya
docker container create --name mongodata --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=aidil --env MONGO_INITDB_ROOT_PASSWORD=aidil mongo:latest
docker container rm mongodata

// Cek status Docker daemon dengan perintah
systemctl status docker
pass wls2 di computernya : Huhui123!
systemctl status docker
coba restart laptonya jika masih belum bisa

// Jika Docker daemon belum berjalan, coba jalankan
sudo systemctl enable docker
sudo systemctl start docker

// update docker destopnya
// lalu restart laptopnya
