#!/bin/bash

set -x

: "data set and trancerate" & {
cd /var/tmp
wget http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip .
unzip -c ken_all.zip | nkf -w | sed  's/"//g' > ken_all.csv
}


