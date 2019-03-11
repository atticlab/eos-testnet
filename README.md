# Testnet
## Basic info
#### Core system symbol 
```
SUN
```
#### Chain ID
```
98be37555f06f3694f0852bd4190260d3644f54540c142653e66b947f17c410e
```
#### genesis.json
```
{
  "initial_timestamp": "2019-03-01T08:55:11.000",
  "initial_key": "EOS55zcDKSMZdqkCbTqrXcgNZQL9YynN5F6WimWZuTqq5zDEU7NEK",
  "initial_configuration": {
    "max_block_net_usage": 1048576,
    "target_block_net_usage_pct": 1000,
    "max_transaction_net_usage": 524288,
    "base_per_transaction_net_usage": 12,
    "net_usage_leeway": 500,
    "context_free_discount_net_usage_num": 20,
    "context_free_discount_net_usage_den": 100,
    "max_block_cpu_usage": 100000,
    "target_block_cpu_usage_pct": 500,
    "max_transaction_cpu_usage": 50000,
    "min_transaction_cpu_usage": 100,
    "max_transaction_lifetime": 3600,
    "deferred_trx_expiration_window": 600,
    "max_transaction_delay": 3888000,
    "max_inline_action_size": 4096,
    "max_inline_action_depth": 4,
    "max_authority_depth": 6
  }
}
```
## Launch testnet
#### Step 1. Install eosio sources
```
./install_sources.sh
```
#### Step 2. Configure and start the genesis node
Edit paths in files config.ini, start.sh, stop.sh.
```
cd genesis-node
./start.sh --delete-all-blocks --genesis-json genesis.json
```
#### Step 3. Deploy system contracts
Edit paths in file cleos.sh. 
```
./deploy_system_contracts.sh
```
#### Step 4. Set up and start nodes for new producers
#### Step 5. Transition from single genesis producer to multiple producers
```
./register_producers.sh
```
#### Step 6. Resign eosio account and system accounts
```
./resing_system_contracts.sh
```
