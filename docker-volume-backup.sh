
// Sayangnya, sampai saat ini, tidak ada cara otomatis melakukan backup volume yang sudah kita buat
// Namun kita bisa memanfaatkan container untuk melakukan backup data yang ada di dalam volume
// ke dalam archive seperti zip atau tar.gz

docker container stop mongovolume

// Membuat Backup Container
docker container create --name nginxbackup --mount "type=bind,source=/mnt/e/Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash
ls -l
cd /data
ls -l
cd /backup
ls -l
// nanti hasilnya ada di folder backup
tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume


// ini tahapan pendeknya untuk melakukan backup pakenya ubuntu

docker image pull ubuntu:latest

docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=/mnt/e/Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

docker container start mongovolume
