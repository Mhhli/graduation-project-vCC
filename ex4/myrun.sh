bwnonecnhost1=10
bwnonecnhost2=100
bwnonecnhost3=300
bwnonecnhost4=1000
bwecnhost1=10
bwecnhost2=100
bwecnhost3=1000
bwnet1=10
bwnet2=100
bwnet3=1000

clients=1

./vtcp_fair.sh "virtual-ECN" ${bwecnhost1} ${bwnonecnhost1} ${bwnet1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${bwecnhost2} ${bwnonecnhost1} ${bwnet1} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${bwecnhost2} ${bwnonecnhost1} ${bwnet2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${bwecnhost2} ${bwnonecnhost2} ${bwnet2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${bwecnhost3} ${bwnonecnhost3} ${bwnet2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${bwecnhost3} ${bwnonecnhost4} ${bwnet2} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${bwecnhost3} ${bwnonecnhost2} ${bwnet3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" ${bwecnhost3} ${bwnonecnhost4} ${bwnet3} $clients 1 "vecn"$(tail -1 RED1tab)
./vtcp_fair.sh "virtual-ECN" 3000 3000 3000 $clients 1 "vecn"$(tail -1 RED1tab)
