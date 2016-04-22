#!/bin/bash

set -x

: "data defain" & {
kogaki_url='http://www.post.japanpost.jp/zipcode/dl/kogaki/zipken_all.zip'
oogaki_url='http://www.post.japanpost.jp/zipcode/dl/oogaki/zip/ken_all.zip'
romaji_url='http://www.post.japanpost.jp/zipcode/dl/roman/ken_all_rome.zip'
DIR='/var/tmp'
}


: "data set and trancerate" & {
cd ${DIR}
wget ${romaji_url} .
unzip -c ken_all_rome.zip | nkf -w | sed  's/"//g' > ken_all.csv
}

: "all" & {
cat ${DIR}/ken_all.csv | cut -d\, -f1-9 > ${DIR}/ken_data.csv

}
