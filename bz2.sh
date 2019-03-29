#/usr/bin/sh
git pull origin master
bzip2 -9 */*
bzip2 -9 */*/*
bzip2 -9 */*/*/*
bzip2 -9 */*/*/*/*
bzip2 -9 */*/*/*/*/*
git add . 
git commit -m "upload"
git push origin master
