// Fitur Bind Mounts sudah ada sejak Docker versi awal, di versi terbaru direkomendasikan menggunakan Docker Volume
// Docker Volume mirip dengan Bind Mounts, bedanya adalah terdapat management Volume, dimana kita bisa membuat Volume, melihat daftar Volume, dan menghapus Volume

// Melihat Docker Volume
docker volume ls

//Membuat Volume
docker volume create mongovolume

// Menghapus Volume
docker volume rm mongovolume
