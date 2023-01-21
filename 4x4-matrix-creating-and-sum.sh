#!/bin/bash

# declare komutu ile matris adında içi boş bir dizi oluşturuyoruz.
declare -a matris=()

#Index değeri ile matris dizisine yeni eleman ekliyoruz ve eleman ekledikçe döngü içerisinde index değerini arttırıyoruz.
index=0

# Matris değerlerini kullanıcıdan almak
for ((i = 0; i < 4; i++)); do
    for ((j = 0; j < 4; j++)); do
        ekleneceksayi=0
        read -p "$(($i + 1)). satır, $(($j + 1)). sütunun elemanını giriniz: " ekleneceksayi
        matris[$index]=$ekleneceksayi
        index=$(($index + 1))
    done
done
# Yukarıdaki döngüde ekleneceksayi değişkenini her döngü içerisinde sıfırlıyoruz ve indexi bir arttırıyoruz.
# İç içe döngü kullanılmasındaki sebep kullanıcıya daha derli toplu bir komut satırı arayüzü sunmak


# Matris değerlerini yazdırmak
for ((i=0; i<4; i++)); do
    for ((j=0; j<4; j++)); do
        index=$((i*4+j))
        printf "%d \t" ${matris[$index]}
    done
    echo 
done


# Matris değerlerini toplamak ve ekrana yazdırmak
toplam=0
for ((i=0; i<16; i++)); do
    toplam=$((toplam + matris[i]))
done

echo "Toplam: $toplam"
