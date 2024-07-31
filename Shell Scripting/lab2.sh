#! /usr/bin/bash
#! /usr/bin/python3


res=`curl -L -s "http://api.aladhan.com/v1/timingsByCity?city=Alexandria&country=Arab%20Republic%20of%20Egypt" | json_pp -f json`

#clear
function prayerTimep() {
  export json_file="$res"
  python3 -c "
import os
import json

x = os.environ['json_file']
# Print the JSON data
body = json.loads(x)['data']['timings']
for i, j in body.items():
    print(f'{i}: {j}')
"
}
function prayerTimeb(){

echo "${res}" | jq '.data.timings'

}

prayerTimeb
#prayerTimep
