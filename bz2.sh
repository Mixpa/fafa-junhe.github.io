#/usr/bin/sh
git pull origin master
mv .git ../
find . -name index.html -exec rm -rvf {} \;
bzip2 -9 */*
bzip2 -9 */*/*
bzip2 -9 */*/*/*
bzip2 -9 */*/*/*/*
bzip2 -9 */*/*/*/*/*
indexme -r
mv ../.git ./
git add . 
git commit -m "upload"
git push origin master
