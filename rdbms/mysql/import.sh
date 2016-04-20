#!/bin/bash

set -x

: "data defain" & {
kogaki_url='http://www.post.japanpost.jp/zipcode/dl/kogaki/zip'
oogaki_url='http://www.post.japanpost.jp/zipcode/dl/oogaki/zip'
}


: "data set and trancerate" & {
cd /var/tmp
wget ${kogaki_url}/ken_all.zip .
unzip -c ken_all.zip | nkf -w | sed  's/"//g' > ken_all.csv
}


