#!/bin/bash
letoltes_url="http://gtfs.cdata.hu/mvkzrt.zip"
letoltott_mappa="mvk_gtfs_data"
kicsomagolt_mappa="gtfs_kicsomagolt"
jarat="Repülőtér - Egyetemváros"
letoltes_kicsomagolas() { wget -N "$letoltes_url" -P "$letoltott_mappa" unzip -o "$letoltott_mappa/*.zip" -d "$kicsomagolt_mappa" }
utak_listaja() { echo "Utak $lakohely-rol:" cat "$kicsomagolt_mappa/routes.txt" 
| grep "$jarat" | cut -d, -f1,2 echo -e "\nUtak $jarat-ba:"
