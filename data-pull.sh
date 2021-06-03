#!/bin/bash

dpath='http://www.football-data.co.uk/mmz4281/'
echo "Path to data: $dpath"

season=('1819' '1718' '1617' '1516' '1415' '1314'
     '1213' '1112' '1011' '0910'
     '0809' '0708' '0607' '0506'
     '0405'
)
echo "Seasons of data: ${season[*]}"

league=('E0' 'E1' 'E2' 'E3' 'EC')
echo "Leagues: ${league[*]}"



echo "Double loop through two arrays: season and league"

for i in ${season[@]}; do 
    for j in ${league[@]}; do
        wget -O $i$j.csv "$dpath$i/$j.csv"
    done
done

exit
