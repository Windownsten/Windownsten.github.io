#!/bin/bash

case "$1" in
    crash)
        cp crash.html index.html
        git add .
        git commit -m "crash.html dosyası index.html olarak değiştirildi."
        git push
        rm index.html
        read wait
        ;;
    main)
        cp main.html index.html
        sed -i "s/{{pumplink}}/$1/g" index.html
        git add .
        git commit -m "main.html dosyası index.html olarak değiştirildi."
        git push
        rm index.html
        read wait
        ;;
    *)
        echo "HATA!"
        echo "Kullanım: ./test.sh crash|main"
        read wait
        ;;
esac
