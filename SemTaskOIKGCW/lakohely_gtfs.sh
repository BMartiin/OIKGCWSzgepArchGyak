#!/bin/bash

if [ -e gtfs.zip ]; then
        rm gtfs.zip
fi

if [ -d gtfs ]; then
        rm -r gtfs
fi

wget "https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip"
unzip gtfs.zip -d gtfs

indulo=$(cat gtfs/routes.txt | cut -d ',' -f 3,4 | grep -E "[0-9A-Z],Búza tér")
erkezo=$(cat gtfs/routes.txt | cut -d ',' -f 3,4 | grep -E "Búza tér")

if [ -n "$indulo" ]; then
    echo -e " A búza térről induló járatok:\n$indulo"
fi

if [ -n "$erkezo" ]; then
    echo -e "\n A Búza térre érkező járatok:\n$erkezo"
fi
