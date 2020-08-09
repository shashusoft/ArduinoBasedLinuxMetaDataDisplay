#!/bin/sh
echo "arduino found" > info.txt
ls /dev/ | grep ttyUSB
RESULT_USB=$(echo $?)
echo $RESULT_USB
if [ $RESULT_USB -eq 0 ]
    then
    echo "Arduino over ttyUSB found"
    else
    echo "Arduino over ttyUSB not found"
    ls /dev/ | grep ttyACM
    RESULT_ACM=$(echo $?)
fi
if [ $RESULT_ACM -eq 0 ]	
    then
    echo "Arduino over ttyACM found"
    else
    echo "Arduino over ttyACM not found"
fi

echo "arduino found" > info.txt
