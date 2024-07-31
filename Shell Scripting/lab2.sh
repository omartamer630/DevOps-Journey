#! /usr/bin/bash
#! /usr/bin/python3

#clear
function prayerTime(){

res=`curl -L -s "http://api.aladhan.com/v1/timingsByCity?city=Alexandria&country=Arab%20Republic%20of%20Egypt" | json_pp -f json`

echo "${res}" | jq '.data.timings'
}

prayerTimeb
