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
curl -X POST "https://api.cloudflare.com/client/v4/zones/023e105f4ecef8ad9ca31a8372d0c353/purge_cache" \
     -H "X-Auth-Email: 842355358@qq.com" \
     -H "X-Auth-Key: 8f2dcec3c7c6928530f9f8fcc1899228c162c" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}'
