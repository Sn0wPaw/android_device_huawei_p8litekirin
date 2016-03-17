#!binsh

VENDOR=huawei
DEVICE=hi6210sft

BASE=......vendor$VENDOR$DEVICEproprietary

echo Pulling device files...
for FILE in `cat proprietary-files.txt  grep -v ^#  grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE$DIR ]; then
        mkdir -p $BASE$DIR
    fi
    adb pull system$FILE $BASE$FILE
done

.setup-makefiles.sh