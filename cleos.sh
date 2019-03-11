#!/bin/bash

NODEOSBINDIR="../eos/build/programs/cleos"

NODE="127.0.0.1:8888"

$NODEOSBINDIR/cleos -u http://$NODE "$@"
