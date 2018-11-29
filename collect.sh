#!/usr/bin/env bash

for CONF in "CIKM%2520%252718" "CHI%20%2718" "WWW%20%2718" "RecSys%20%2718"; do
    curl "https://dl.acm.org/exportformats_search.cfm?query=persons%2Eauthors%2Eaffiliation%3A%28Netherlands%20Belgium%29&filtered=acmdlConferenceAcronym%3D${CONF}&within=owners%2Eowner%3DGUIDE&dte=2018&bfr=2018&srt=%5Fscore&expformat=csv"\
     -H 'authority: dl.acm.org'\
     -H 'pragma: no-cache'\
     -H 'cache-control: no-cache'\
     -H 'upgrade-insecure-requests: 1'\
     -H 'dnt: 1'\
     -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36'\
     -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8'\
     -H 'referer: https://dl.acm.org/results.cfm?query=persons.authors.affiliation:(Netherlands%20Belgium)&within=owners.owner=GUIDE&filtered=acmdlConferenceAcronym%253DCIKM%2520%252718&dte=2018&bfr=2018'\
     -H 'accept-encoding: gzip, deflate, br'\
     -H 'accept-language: en-GB,en-US;q=0.9,en;q=0.8,nl;q=0.7'\
     -H 'cookie: __cfduid=d8fd3beea11032411478e6b19e5a7a9bb1526546536; JSESSIONID=5A1B88D3F565C0AEA3C52BA2B8AB09DE.cfusion; CFID=90675428; CFTOKEN=aebc10ca32245a86%2D7D5F3265%2D9B4B%2D93DD%2D34D2D8CBC9A3D08E; DEEPCHK=1; __cflb=2605054591'\
     --compressed > data/"${CONF}".csv
     sleep 1
done


