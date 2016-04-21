#!/bin/bash

set -x

: "data defain" & {
kogaki_url='http://www.post.japanpost.jp/zipcode/dl/kogaki/zip'
oogaki_url='http://www.post.japanpost.jp/zipcode/dl/oogaki/zip'
DIR='/var/tmp'
}


: "data set and trancerate" & {
cd ${DIR}
wget ${kogaki_url}/ken_all.zip .
unzip -c ken_all.zip | nkf -w | sed  's/"//g' > ken_all.csv
}

: "all" & {
cat ${DIR}/ken_all.csv | cut -d\, -f1-9 > ${DIR}/ken_data.csv

}
