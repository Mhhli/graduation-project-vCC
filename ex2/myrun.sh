#!/bin/bash	

bw=1000
clients=1
./vtcp_fair.sh "virtual-ECN" ${bw} $clients 1 "vecn"$(sed -n '2p' REDtab)
./vtcp_fair.sh "virtual-ECN" ${bw} $clients 1 "vecn"$(sed -n '3p' REDtab)
./vtcp_fair.sh "virtual-ECN" ${bw} $clients 1 "vecn"$(sed -n '4p' REDtab)
./vtcp_fair.sh "virtual-ECN" ${bw} $clients 1 "vecn"$(sed -n '5p' REDtab)
./vtcp_fair.sh "virtual-ECN" ${bw} $clients 1 "vecn"$(sed -n '6p' REDtab)
./vtcp_fair.sh "virtual-ECN" ${bw} $clients 1 "vecn"$(sed -n '7p' REDtab)
./vtcp_fair.sh "virtual-ECN" ${bw} $clients 1 "vecn"$(sed -n '8p' REDtab)
./vtcp_fair.sh "virtual-ECN" ${bw} $clients 1 "vecn"$(sed -n '9p' REDtab)
