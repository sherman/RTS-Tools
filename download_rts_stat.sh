#!/bin/bash

BASE_URL="http://ftp.rts.ru/pub/info/stats/history/F/"

FULL_YEAR=$1
YEAR=`echo $1 | cut -c 3-4`

FILE_TEMPLATE=FTYYMMDD.zip

for month in {01..12}
do
	for day in {01..31}
	do
		FILE=`echo $FILE_TEMPLATE | sed "s/YY/$YEAR/" | sed "s/MM/$month/" | sed "s/DD/$day/"`

		if [ ! -f ./$FILE ]
		echo $BASE_URL$FULL_YEAR/$FILE
		then
		    wget $BASE_URL$FULL_YEAR/$FILE -O $FILE
		fi
	done
done


#$BASE_URL$YEAR
