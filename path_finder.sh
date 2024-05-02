
#!/bin/bash
# inpath - Проверяет допустимость пути к указанной программе или ее доступность в каталогах из списка PATH 
in_path()
{

 cmd=$1 
 ourpath=$2 
 result=1
 oldIFS=$IFS 
 IFS=":"

 for directory in $ourpath
 do
    if [ -x $directory/$cmd ] ; then
        result=0 # Если мы здесь, значит, команда найдена.
    fi
 done
 IFS=$oldIFS
 return $result
}

checkForCmdInPath()
{
 var=$1
    if [ "$var" != "" ] ; then
      if [ "${var:0:1}" = "/" ] ; then
        if [ ! -x $var ] ; then  # проверка что файл НЕ исполняемый
            return 1
        fi
    elif ! in_path $var "$PATH" ; then # проверка что файл НЕ находится в PATHa
        return 2
      fi
    fi
}

# ${var%${var#?}}
checkForCmdInPath "$1"

case $? in
    0 ) echo "$1 found in PATH" ;;
    1 ) echo "$1 not found or not executable" ;;
    2 ) echo "$1 not found in PATH" ;;
esac

exit 0