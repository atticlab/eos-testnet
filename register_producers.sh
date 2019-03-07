
# Create producers accounts

for account in 'mercury' 'venus' 'earth' 'mars' 'jupiter' 'saturn' 'uranus' 'neptune'
do
    ./cleos.sh system newaccount --stake-net "10.000 SUN" --stake-cpu "10.000 SUN" --buy-ram "10.000 SUN" eosio $account EOS7vaUHCdhWRXv9aPHvnHf8XWXGvdWTSXcrCJWyFPdKXagCCMUSM EOS7vaUHCdhWRXv9aPHvnHf8XWXGvdWTSXcrCJWyFPdKXagCCMUSM
done

# Register producers

for account in 'mercury' 'venus' 'earth' 'mars' 'jupiter' 'saturn' 'uranus' 'neptune'
do
    ./cleos.sh system regproducer $account EOS7cKh8UXRAC2c91rmA5Ch8SBPmP3KFnDda6etWCYq1LaT8hhTqT https://atticlab.net 804
done

# Vote
./cleos.sh system delegatebw voter voter "100000000.0000 SUN" "50000000.0000 SUN"
./cleos.sh system voteproducer prods voter mercury venus earth mars jupiter saturn uranus neptune


