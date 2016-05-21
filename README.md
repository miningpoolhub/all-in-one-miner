# All In One Miner for miningpoolhub.com

## Introduction

This repository contains sample mining settings and several miner program's windows binary to help multi algo switching at https://miningpoolhub.com


releases : https://github.com/miningpoolhub/all-in-one-miner/releases


ethminer 1.0.8 - https://github.com/Genoil/cpp-ethereum

sgminer 5.3.1 - https://github.com/miningpoolhub/sgminer


## Usage

1, Select appropriate auto switching item at Hub Workers page ( https://miningpoolhub.com/?page=account&action=hubworkers )

2. Run below batch file

    setx GPU_MAX_ALLOC_PERCENT 100
    setx GPU_USE_SYNC_OBJECTS 1

    :start
    ethminer --farm-retries 0 -G -S us-east1.ethash-hub.miningpoolhub.com:12020 -O username.workername:x -FS exit
    sgminer --no-retry -k vanilla -o stratum+tcp://hub.miningpoolhub.com:12019 -u username.workername -p x
    sgminer --no-retry -k groestlcoin -o stratum+tcp://hub.miningpoolhub.com:12004 -u username.workername -p x
    sgminer --no-retry -k myriadcoin-groestl -o stratum+tcp://hub.miningpoolhub.com:12005 -u username.workername -p x
    sgminer --no-retry -k neoscrypt -o stratum+tcp://hub.miningpoolhub.com:12012 -u username.workername -p x
    sgminer --no-retry -k quarkcoin -o stratum+tcp://hub.miningpoolhub.com:12015 -u username.workername -p x
    sgminer --no-retry -k qubitcoin -o stratum+tcp://hub.miningpoolhub.com:12014 -u username.workername -p x
    sgminer --no-retry -k skeincoin -o stratum+tcp://hub.miningpoolhub.com:12016 -u username.workername -p x
    sgminer --no-retry -k darkcoin-mod -o stratum+tcp://hub.miningpoolhub.com:12007 -u username.workername -p x
    sgminer --no-retry -k marucoin-mod -o stratum+tcp://hub.miningpoolhub.com:12008 -u username.workername -p x
    sgminer --no-retry -k bitblock -o stratum+tcp://hub.miningpoolhub.com:12009 -u username.workername -p x

    timeout 1
    goto start



## Notes

Sometimes ethminer crashes when disconnected from pool (it is signal to auto switch) and pc would be left idle. It is not recommended to use multi algo switching at this time.
Here's some workaround batch file to run simultaneously which kills ethminer in certain time intervals.


    :loop1

    timeout /T 3600

    taskkill /F /IM ethminer.exe

    timeout /T 25

    goto loop1