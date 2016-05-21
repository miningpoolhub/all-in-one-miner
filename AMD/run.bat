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
sgminer --no-retry -k lyra2rev2 -o stratum+tcp://hub.miningpoolhub.com:12018 -u username.workername -p x

timeout 1
goto start