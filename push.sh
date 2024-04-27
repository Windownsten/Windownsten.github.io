#!/bin/bash

# Git commit mesajını al
echo "Lütfen commit mesajını giriniz:"
read commit_message

# Değişiklikleri ekleyin
git add .

# Commit yapın
git commit -m "$commit_message"

# Değişiklikleri uzak depoya gönderin
git push

echo "Git işlemleri tamamlandı!"
