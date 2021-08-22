#!/bin/sh
. /etc/profile
. ~/.bash_profile 
rm -rf "/tmp/speed"
"/root/speedtest"  >  "/tmp/speed"
ls1=`cat /tmp/speed | grep Upload | awk '{gsub(/^\s+|\s+$/, "");print}'`
ls2=`cat /tmp/speed | grep Download | awk '{gsub(/^\s+|\s+$/, "");print}'`
#主机名称
lsn='日本东京|扶墙月抛|AWS'
#telegram的uid
tgid='1440255704'
#telegrambot的api
tgbotapi='1961526994:AAGmUW6eZ95Tmc_sBx_4KZ7ZzxS3anJNk_0'
curl --data chat_id="$tgid" --data-urlencode "text=§$lsn§
$ls1
$ls2" "https://api.telegram.org/bot$tgbotapi/sendMessage?parse_mode=HTML"