bw1=1000
bw2=100
bw3=10
bw4=3000
alo1="reno"
alo2="yeah"
alo3="highspeed"
alo4="bic"
alo5="vegas"
clients=1

./vtcp_fair.sh "virtual-ECN" ${alo1} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo2} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo3} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo4} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo5} ${bw1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo1} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo2} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo3} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo4} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo5} ${bw2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo1} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo2} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo3} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo4} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo5} ${bw3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo1} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo2} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo3} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo4} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${alo5} ${bw4} $clients 1 "vecn"$(tail -1 RED1tab)
