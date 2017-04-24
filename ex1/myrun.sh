#!/bin/bash	

bw1=100
bw2=1000
bw3=10
bw4=3000
qsize1=1000
qsize2=500
qsize3=3000
qsize4=100
clients=1
./vtcp_fair.sh "virtual-ECN" ${qsize4} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize2} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize1} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize3} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize4} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize2} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize3} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize1} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize4} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize2} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize3} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize1} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize2} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize3} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize1} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${qsize4} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
