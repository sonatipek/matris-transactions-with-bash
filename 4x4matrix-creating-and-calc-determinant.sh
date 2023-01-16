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

clear   # Kullanıcıdan alınan değerlerin, daha iyi terminal görüntüsü için silinmesini sağlıyorum.



# Matris değerlerini yazdırmak
for ((i=0; i<4; i++)); do
    
    for ((j=0; j<4; j++)); do
        index=$((i*4+j))

        # Değerlere matrix görünümü vermek için sayıların başlarına "|" ifadesi koymaya yarayan if
        if [[ "$index" = "0" || "$index" = "4" || "$index" = "8" || "$index" = "12" ]]
        then
            printf "|"
        fi

        # Değerlere matrix görünümü vermek için sayıların sonlarına "|" ifadesi koymaya yarayan if-else bloğu
        # 3,7,11 ve 15. indexte sonuna "|" ifadesi koyuyor, değilse koymuyor
        if [[ "$index" = "3" || "$index" = "7" || "$index" = "11" || "$index" = "15" ]]
        then
            printf "%d|" ${matris[$index]}
        else
            printf "%d \t" ${matris[$index]}
        fi
    done
    echo 
done

echo    #Boşluk yaratmak için kullandığım bir yöntem
echo


# Determinant hesabı için matrisi formüle hazır hale getiriyorum
a=${matris[0]}
b=${matris[1]}
c=${matris[2]}
d=${matris[3]}
e=${matris[4]}
f=${matris[5]}
g=${matris[6]}
h=${matris[7]}
i=${matris[8]}
j=${matris[9]}
k=${matris[10]}
l=${matris[11]}
m=${matris[12]}
n=${matris[13]}
o=${matris[14]}
p=${matris[15]}

# Matrisin determinantını hesaplamak
determinant=$((a * f * k * p - a * f * l * o - a * j * g * p + a * j * h * o + a * n * g * l - a * n * h * k - e * b * k * p + e * b * l * o + e * j * c * p - e * j * d * o - e * n * c * l + e * n * d * k + i * b * g * p - i * b * h * o - i * f * c * p + i * f * d * o + i * n * c * h - i * n * d * g - m * b * g * l + m * b * h * k + m * f * c * l - m * f * d * k - m * j * c * h + m * j * d * g))


# Matrisin toplam değerini ve determinant degerini ekrana yazdırıyorum
echo "Determinant: $determinant"
