#!/bin/bash

case "$1" in
    crash)
        cp crash.html index.html
        git add .
        git commit -m "crash.html dosyası index.html olarak değiştirildi."
        git push
        rm index.html
        echo "İşlem tamamlandı! Kapatmak için enter'a basın."
        read wait
        ;;
    main)
        cp main.html index.html
        # sed -i "s/{{pumplink}}/$2/g" index.html
        sed -i "s#{{pumplink}}#$2#g" index.html
        echo $2
        git add .
        git commit -m "main.html dosyası index.html olarak değiştirildi."
        git push
        rm index.html
        echo "İşlem tamamlandı! Kapatmak için enter'a basın."
        read wait
        ;;
    push)
        git add .
        git commit -m "$2"
        git push
        echo "İşlem tamamlandı! Kapatmak için enter'a basın."
        read wait
        ;;
    *)
        echo "HATA!"
        echo "Kullanım: ./test.sh crash|main"
        read wait
        ;;
esac
