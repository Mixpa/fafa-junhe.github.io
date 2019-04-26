#!/bin/bash
run_make()
{
        #如果该目录下存在Makefile
            echo ""
            echo ===================== FOUND ===================
            pwd;
            echo ===============================================
            python3.7 /home/fafa/maps/fafa-junhe.github.io/listing.py --header \<h1\>这是日常服务器＆咖啡厅服务器的下载服务器\(FASTDL\)\<\/h1\> ./ > index.html ;
}

run_ls()
{
        pwd;
        ls 
        
        echo ""
}

myfunc()
{
        cd $1;
        run_make;
        run_ls;
        for x in $(ls .)
        do
                if [ -d "$x" ];then
                        myfunc $x;
                        cd ..
                fi
            
        done
}

p=.
if [ $1 ];then
    p=$1
fi
echo $p

myfunc $p
