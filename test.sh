#!/bin/sh
mkdir /home/atish/dev/arduino_ip/testdirectory2
echo "arduino found" > /home/atish/dev/arduino_ip/testdirectory2/info1.txt
ls /dev/ | grep ttyUSB
RESULT_USB=$(echo $?)
echo $RESULT_USB
if [ $RESULT_USB -eq 0 ]
    then
    echo "Arduino over ttyUSB found" >> /home/atish/dev/arduino_ip/testdirectory2/info.txt
    else
    echo "Arduino over ttyUSB not found" >> /home/atish/dev/arduino_ip/testdirectory2/info.txt
    ls /dev/ | grep ttyACM
    RESULT_ACM=$(echo $?)
fi
if [ $RESULT_ACM -eq 0 ]	
    then
    echo "Arduino over ttyACM found" >> /home/atish/dev/arduino_ip/testdirectory2/info.txt
    else
    echo "Arduino over ttyACM not found" >> /home/atish/dev/arduino_ip/testdirectory2/info.txt
fi








