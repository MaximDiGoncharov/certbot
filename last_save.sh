#!/bin/bash
res="restart"
strindex() { 
  x="${1%%"$2"*}"
  [[ "$x" = "$1" ]] && echo -1 || echo ${#x}
}

#my_string=abc
#substring=ab
#if [ "${my_string/$substring}" = "$my_string" ] ; then
#  echo "${substring} is not in ${my_string}"
#else
#  echo "${substring} was found in ${my_string}"
#fi

start=$(strindex "$1" "with the following value")
string=${1:$start + 29}
end=$(strindex "$string" " ")
string=${string:0:end-5}

# нужный нам путь
echo "_acme-challenge IN      TXT     $string">>/etc/bind/zones/db.laxo.one

# тестовый путь
#echo "_acme-challenge IN      TXT     $string">>result.txt


# после записи необходимо перезагрузить
echo $string>> token_dns.txt
echo "system proccess - service bind9 restart" >> sys.txt
echo "system proccess - sleep 10" >> sys.txt
service bind9 restart
sleep 10
service systemd-resolved restart
sleep 10

# сверяем данные (вызываем скрипт и передаем параметр) 
./compare.sh $string


# проверка значения
# result=$(./compare.sh $string)
# if [[ "$result" ]]; then 
# echo "good">>log.txt
# else 
# echo "bad">>log.txt
# fi
