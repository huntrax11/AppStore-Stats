#!/bin/bash
cd $(dirname $0)

source conf.properties
export TZ=US/Pacific

mkdir -p "${savingPath}"

for i in {1..7}
do
    DATE=$(date -v-${i}d +%Y%m%d)
    if [ -e "${savingPath}/S_D_${vendorID}_${DATE}.txt" ]; then
        echo Report of $DATE is already exist
    else
        echo Trying to fetch $DATE
        java Autoingestion conf.properties $vendorID Sales Daily Summary $DATE
        gzip -d S_D_${vendorID}_${DATE}.txt.gz
        mv S_D_${vendorID}_${DATE}.txt "${savingPath}"
    fi;
done
