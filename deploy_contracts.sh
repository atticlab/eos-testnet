
# Create important system accounts

./cleos.sh create account eosio eosio.bpay EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.vpay EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.msig EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.ram EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.ramfee EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.stake EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.token EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.wrap EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.bios EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK
./cleos.sh create account eosio eosio.rex EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK

# Set system contracts
./cleos.sh set contract eosio.token ~/sources/eosio.contracts/build/contracts/eosio.token/
./cleos.sh set contract eosio ~/sources/eosio.contracts/build/contracts/eosio.system/
./cleos.sh set contract eosio.msig ~/sources/eosio.contracts/build/contracts/eosio.msig/
./cleos.sh set contract eosio.wrap ~/sources/eosio.contracts/build/contracts/eosio.wrap/
./cleos.sh set contract eosio.bios ~/sources/eosio.contracts/build/contracts/eosio.bios/


# Create and allocate the SUN currency

./cleos.sh push action eosio.token create '[ "eosio", "10000000000.0000 SUN" ]' -p eosio.token@active
./cleos.sh push action eosio.token issue '[ "eosio", "1000000000.0000 SUN", "memo" ]' -p eosio@active


# Make privileged accounts

./cleos.sh push action eosio setpriv '["eosio", 1]' -p eosio@active
./cleos.sh push action eosio setpriv '["eosio.msig", 1]' -p eosio@active
./cleos.sh push action eosio setpriv '["eosio.wrap", 1]' -p eosio@active
./cleos.sh push action eosio setpriv '["eosio.bios", 1]' -p eosio@active

# Initialize system account
./cleos.sh push action eosio init '[0,"4,SUN"]' -p eosio@active


# Create accounts
./cleos.sh system newaccount --stake-net "100.0000 SUN" --stake-cpu "100.0000 SUN" --buy-ram "10.0000 SUN" eosio voter EOS7vaUHCdhWRXv9aPHvnHf8XWXGvdWTSXcrCJWyFPdKXagCCMUSM EOS7vaUHCdhWRXv9aPHvnHf8XWXGvdWTSXcrCJWyFPdKXagCCMUSM 
./cleos.sh transfer eosio voter "150000000.0000 SUN" ""
./cleos.sh system newaccount --stake-net "100.0000 SUN" --stake-cpu "100.0000 SUN" --buy-ram "10.0000 SUN" eosio faucet EOS7vaUHCdhWRXv9aPHvnHf8XWXGvdWTSXcrCJWyFPdKXagCCMUSM EOS7vaUHCdhWRXv9aPHvnHf8XWXGvdWTSXcrCJWyFPdKXagCCMUSM 
./cleos.sh transfer eosio faucet "850000000.0000 SUN" ""


./cleos.sh transfer eosio eosio.bpay "100000000.000 SUN" ""
./cleos.sh transfer eosio eosio.vpay "100000000.000 SUN" ""