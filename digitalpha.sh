#!/bin/bash

validAlphaNum()
{
    validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')" # удаляет любые символы, не входящие в множество [:alnum:],

    if [ "$validchars" = "$1" ] ; then
        return 0
    else
        return 1
    fi

}

echo -n "Enter input: "
read input
# Проверка ввода
if ! validAlphaNum "$input" ; then
    echo "Please enter only letters and numbers." >&2
    exit 1
else
    echo "Input is valid."
fi

exit 0