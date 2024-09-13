// pakai terminalnya ubuntu ya
// Saat kita membuat container, aplikasi yang terdapat di dalam container hanya bisa diakses dari dalam container
//  Oleh karena itu, kadang kita perlu masuk ke dalam container nya itu sendiri


// Masuk ke Container
docker container exec -i -t contohredis /bin/bash

// -i adalah argument interaktif, menjaga input tetap aktif
// -t adalah argument untuk alokasi pseudo-TTY (terminal akses)

