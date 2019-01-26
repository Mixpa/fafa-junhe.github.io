#/usr/bin/sh
bzip2 -9 *
bzip2 -9 */*
bzip2 -9 */*/*
bzip2 -9 */*/*/*
bzip2 -9 */*/*/*/*
bzip2 -9 */*/*/*/*/*
bzip2 -d bz2.sh.bz2
bzip2 -d CNAME.bz2
git add . 
git commit -m "upload"
git push origin master
