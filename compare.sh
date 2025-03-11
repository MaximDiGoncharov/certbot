#!/bin/bash
# запрашиваем текущие записи в DSN
res=$(dig _acme-challenge.laxo.one TXT  +short )
# результат кладем в файл
echo "Write key"
echo "$res">>result_dig_query.txt
sleep 5
# ищем совпадения в результатe dig_query
find=$(grep "$1" ./result_dig_query.txt)


# результат проверки выводим в файл
echo "\n">>result_after_compare.txt
echo $find>>result_after_compare.txt

# первое вернет true если пустое значение что-то делаем
if [[ $find ]]; then
echo "$find">>./log.txt
# если false
else
echo "error">>./log.txt
# письмо на почту
fi

unset $res
unset $find
rm ./result_dig_query.txt 
#rm ./result_after_compare.txt 
