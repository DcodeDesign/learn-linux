#! /bin/bash
ssh zv6tq_dcode_tg@zv6tq.ftp.infomaniak.com
cd web
cp labs ~/Documents

scp -r zv6tq_dcode_tg@zv6tq.ftp.infomaniak.com:web/ ~/Documents