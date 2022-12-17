#!/bin/bash
    curl   --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36" -fsL --write-out %{http_code} --output /dev/null --max-time 10 "https://www.netflix.com/title/81215567" > ./1.txt
git add --all
if [ $# -eq 0 ]
then
    pushmessage=2022-12-17
else
    pushmessage="$*"
fi
#git commit >/dev/null


git commit -m ${pushmessage}
#git push -u origin master
git push
