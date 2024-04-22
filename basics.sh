#!/bin/bash

# # Перменные
# name="Никита"
# x=18
# y=15

# echo "Привет $name"     # "" - кавычки пропускают знак доллара

# echo 'Привет $name'     # '' - в этих кавычках всё будет считаться просто текстом

# sum=$x+$y

# correst_sum=$(($x+$y))

# echo $sum   # любая объявленная переменная считается текстовой
# echo $correst_sum   
# echo $OSTYPE

# # Переменные окружения
# 	#  BASH - полный путь до исполняемого файла командной оболочки bash
# 	#  BASH_VERSION - версия bash
# 	#  HOME - домашний каталог пользователя, который запустил сценарий
# 	#  HOSTNAME - имя хоста
# 	#  RANDOM - случ число от 0 до 32767
# 	#  OSTYPE - тип ОС
# 	#  PWD - текущий каталог
# 	#  PS1 - строка приглашения
# 	#  UID - id пользователя который запустил сценарий
# 	#  USER - имя пользователя


# # read
# echo  "Как вас зовут " # -n ввод данных в той же самой строке 
# read Name
# echo "Привет $Name"

# # Параметры

# $1 $2 ..... $9 $[10] $[11] Если надо использовать больше 9 параметров, то они пишутся в []

# echo "$(($1 $2 $3))" # калькулятор 1 - первое число, 2 - операция, 3 - второе число


# условный оператор if

# echo "ВВедите ваш возраст"

# read age

# if	[[ $age -ge 0 ]] && [[ $age -lt 18 ]]; then
# 		echo "Вы еще ребенок"
# 	elif [[ $age -ge 18 ]] && [[ $age -le 40 ]]; then
# 		echo "Вы молодой человек"
# 	else
# 		echo "Ты старый гуифт"
# fi


# услованый оператолр case

# case переменная in
# 	условие )
# 	 	команда 1;;
# 		команда 2;;
# 	*)
# esac

# echo "Введите марку телефона"
# read brand

# case $brand in

# 	Samsung )
# 		echo "Скидка на телефоны $brand - 30 %";;
# 	Huawei)
# 		echo "Скидка на телефоны $brand - 10 %";;
# 	Nokia)
# 		echo "Скидка на телефоны $brand - 20 %";;
# 	*)
# 		echo "На этот вид товара скидки нету";;

# esac


# вложенные условия 

# echo "Введите марку телефона"
# read brand
# if [[ $brand == "samsung" ]] || [[ $brand == "nokia" ]] || [[ $brand == "huawei" ]] || [[ $brand == "iphone" ]]; then
# 	case $brand in
# 	    samsung)
# 		    echo "Скидка на телефоны $brand - 30%";;
# 	    nokia)
# 		    echo "Скидка на телефоны $brand - 10%";;
# 	    huawei)
# 		    echo "Скидка на телефоны $brand - 20%";;
# 	    *)
# 		    echo "На этот вид товара скидок нет"
#     esac
# fi
# #Решение при помощи вложенного if
# echo "Введите марку телефона"
# read brand
# if [[ $brand == "samsung" ]] || [[ $brand == "nokia" ]] || [[ $brand == "huawei" ]] || [[ $brand == "iphone" ]]; then
# 	if [[ $brand == "samsung" ]]; then
# 		echo "Скидка на $brand - 30%"
# 	elif [[ $brand == "nokia" ]]; then
# 		echo "Скидка на $brand - 10%"
# 	elif [[ $brand == "huawei" ]]; then
# 		echo "Скидка на $brand - 20%"
# 	else
# 		echo "На данный вид товара скидок нет"
# 	fi
#  else echo "$brand - не марка телефона."
# fi













