# This has them take snapshots every 1000 blocks, and support 500 incoming peers.  They're not seed nodes so that this config can be used well as a sentry.
# RPCs are currently fully exposed.  They'll be put behind caddy and rate limited soon (TM).
# Each node is configured for state sync.  We will release documentation network-wide on how to launch nodes with state sync to push the use of this technology.  We will need some help from others -- failing that we can run sync1.notional.ventures and sync2.notional.ventures.


export HISTCONTROL=ignoreboth
export HISTFILESIZE=-1
export HISTSIZE=-1

export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/go/bin
export GOPATH=~/go

export OSMOSISD_P2P_LADDR=tcp://0.0.0.0:2000
export OSMOSISD_RPC_LADDR=tcp://0.0.0.0:2001
export OSMOSISD_GRPC_ADDRESS=0.0.0.0:2002
export OSMOSISD_API_ADDRESS=tcp://127.0.0.1:2003
export OSMOSISD_NODE=tcp://127.0.0.1:2001
export OSMOSISD_P2P_SEED_NODES="1b077d96ceeba7ef503fb048f343a538b2dcdf1b@136.243.218.244,2308bed9e096a8b96d2aa343acc1147813c59ed2@3.225.38.25:26656,902bdfe51b6a97cc9369664a21c87ed61d471d2a@136.243.218.243,085f62d67bbf9c501e8ac84d4533440a1eef6c45@95.217.196.54:26656,f515a8599b40f0e84dfad935ba414674ab11a668@osmosis.blockpane.com:26656"
export OSMOSISD_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export OSMOSISD_P2P_MAX_NUM_INBOUND_PEERS=3000
export OSMOSISD_P2P_MAX_NUM_OUTBOUND_PEERS=50

export GAIAD_P2P_LADDR=tcp://0.0.0.0:2010
export GAIAD_RPC_LADDR=tcp://127.0.0.1:2011
export GAIAD_GRPC_ADDRESS=127.0.0.1:2012
export GAIAD_API_ADDRESS=tcp://127.0.0.1:2013
export GAIAD_NODE=tcp://127.0.0.1:2011
export GAIAD_P2P_PERSISTENT_PEERS="bf8328b66dceb4987e5cd94430af66045e59899f@public-seed.cosmos.vitwit.com:26656,cfd785a4224c7940e9a10f6c1ab24c343e923bec@164.68.107.188:26656,d72b3011ed46d783e369fdf8ae2055b99a1e5074@173.249.50.25:26656,ba3bacc714817218562f743178228f23678b2873@public-seed-node.cosmoshub.certus.one:26656,3c7cad4154967a294b3ba1cc752e40e8779640ad@84.201.128.115:26656,366ac852255c3ac8de17e11ae9ec814b8c68bddb@51.15.94.196:26656"
export GAIAD_P2P_MAX_NUM_INBOUND_PEERS=500
export GAIAD_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export GAIAD_P2P_MAX_NUM_OUTBOUND_PEERS=30

export AKASH_P2P_LADDR=tcp://0.0.0.0:2020
export AKASH_RPC_LADDR=tcp://127.0.0.1:2021
export AKASH_GRPC_ADDRESS=127.0.0.1:2022
export AKASH_API_ADDRESS=tcp://127.0.0.1:2023
export AKASH_NODE=tcp://127.0.0.1:2021
export AKASH_P2P_PERSISTENT_PEERS="27eb432ccd5e895c5c659659120d68b393dd8c60@35.247.65.183:26656,9180b99a5be3443677e0f57fc5f40e8f071bdcd8@161.35.239.0:51656,47c9acc0e7d9b244a6404458e76d50b6284bfbbb@142.93.77.25:26656,ab7b55588ea3f4f7a477e852aa262959e54117cd@3.235.249.94:26656,4acf579e2744268f834c713e894850995bbf0ffa@50.18.31.225:26656,3691ac1f56389ffec8579c13a6eb8eca41cf8ae3@54.219.88.246:26656,86afe23f116ba4754a19819a55d153008eb74b48@15.164.87.75:26656,6fbc3808f7d6c961e84944ae2d8c800a8bbffbb4@138.201.159.100:26656,a2a3ffe7ac122a218e1f59c32a670f04b8fd3033@165.22.69.102:26656"
export AKASH_P2P_MAX_NUM_INBOUND_PEERS=500
export AKASH_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export AKASH_P2P_MAX_NUM_OUTBOUND_PEERS=60

export SENTINELHUB_P2P_LADDR=tcp://0.0.0.0:2030
export SENTINELHUB_RPC_LADDR=tcp://127.0.0.1:2031
export SENTINELHUB_GRPC_ADDRESS=127.0.0.1:2032
export SENTINELHUB_API_ADDRESS=tcp://127.0.0.1:2033
export SENTINELHUB_NODE=tcp://127.0.0.1:2031
export SENTINELHUB_P2P_PERSISTENT_PEERS="152bad169bfde238d24b8e2403d72c092adc107b@54.169.185.248:26656,57dbef4a8637f4c14dc5f8a4070ff07cc3de8380@13.212.44.171:26656,cb9a308bd21b745ecd58236a08bc60046b06fec3@13.233.250.145:26656,a77f6a094578dad899e2f40e0626b4c6d4705311@3.36.165.232:26656,5f7164bbf0e74bc0b7bc624c631b559bde6d52b4@165.22.65.48:26656,647e54e22cfcdf97b42ada11fcef2f0b5bd81230@35.163.249.152:31358,387027e3b1180d3a619cbbf3462704a490785963@54.176.90.228:26656"
export SENTINELHUB_P2P_MAX_NUM_INBOUND_PEERS=500
export SENTINELHUB_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export SENTINELHUB_P2P_MAX_NUM_OUTBOUND_PEERS=60

export REGEN_P2P_LADDR=tcp://0.0.0.0:2060
export REGEN_RPC_LADDR=tcp://127.0.0.1:2061
export REGEN_GRPC_ADDRESS=127.0.0.1:2062
export REGEN_API_ADDRESS=tcp://127.0.0.1:2063
export REGEN_NODE=tcp://127.0.0.1:2061
export REGEN_P2P_PERSISTENT_PEERS="69975e7afdf731a165e40449fcffc75167a084fc@104.131.169.70:26656"
export REGEN_P2P_MAX_NUM_INBOUND_PEERS=500
export REGEN_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export REGEN_P2P_MAX_NUM_OUTBOUND_PEERS=60

export CHAIN_MAIND_P2P_LADDR=tcp://0.0.0.0:2040
export CHAIN_MAIND_RPC_LADDR=tcp://127.0.0.1:2041
export CHAIN_MAIND_GRPC_ADDRESS=127.0.0.1:2042
export CHAIN_MAIND_API_ADDRESS=tcp://127.0.0.1:2043
export CHAIN_MAIND_NODE=tcp://127.0.0.1:2041
export CHAIN_MAIND_P2P_SEEDS="8dc1863d1d23cf9ad7cbea215c19bcbe8bf39702@p2p.baaa7e56-cc71-4ae4-b4b3-c6a9d4a9596a.cryptodotorg.bison.run:26656,8a7922f3fb3fb4cfe8cb57281b9d159ca7fd29c6@p2p.aef59b2a-d77e-4922-817a-d1eea614aef4.cryptodotorg.bison.run:26656,494d860a2869b90c458b07d4da890539272785c9@p2p.fabc23d9-e0a1-4ced-8cd7-eb3efd6d9ef3.cryptodotorg.bison.run:26656,dc2540dabadb8302da988c95a3c872191061aed2@p2p.7d1b53c0-b86b-44c8-8c02-e3b0e88a4bf7.cryptodotorg.herd.run:26656,33b15c14f54f71a4a923ac264761eb3209784cf2@p2p.0d20d4b3-6890-4f00-b9f3-596ad3df6533.cryptodotorg.herd.run:26656,d2862ef8f86f9976daa0c6f59455b2b1452dc53b@p2p.a088961f-5dfd-4007-a15c-3a706d4be2c0.cryptodotorg.herd.run:26656,87c3adb7d8f649c51eebe0d3335d8f9e28c362f2@seed-0.crypto.org:26656,e1d7ff02b78044795371beb1cd5fb803f9389256@seed-1.crypto.org:26656,2c55809558a4e491e9995962e10c026eb9014655@seed-2.crypto.org:26656"
export CHAIN_MAIND_P2P_MAX_NUM_INBOUND_PEERS=500
export CHAIN_MAIND_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export CHAIN_MAIND_P2P_MAX_NUM_OUTBOUND_PEERS=60

export OMNIFLIXHUBD_P2P_LADDR=tcp://0.0.0.0:2070
export OMNIFLIXHUBD_RPC_LADDR=tcp://127.0.0.1:2071
export OMNIFLIXHUBD_GRPC_ADDRESS=127.0.0.1:2072
export OMNIFLIXHUBD_API_ADDRESS=tcp://127.0.0.1:2073
export OMNIFLIXHUBD_NODE=tcp://127.0.0.1:2071
export OMNIFLIXHUBD_P2P_SEEDS="8dc1863d1d23cf9ad7cbea215c19bcbe8bf39702@p2p.baaa7e56-cc71-4ae4-b4b3-c6a9d4a9596a.cryptodotorg.bison.run:26656,8a7922f3fb3fb4cfe8cb57281b9d159ca7fd29c6@p2p.aef59b2a-d77e-4922-817a-d1eea614aef4.cryptodotorg.bison.run:26656,494d860a2869b90c458b07d4da890539272785c9@p2p.fabc23d9-e0a1-4ced-8cd7-eb3efd6d9ef3.cryptodotorg.bison.run:26656,dc2540dabadb8302da988c95a3c872191061aed2@p2p.7d1b53c0-b86b-44c8-8c02-e3b0e88a4bf7.cryptodotorg.herd.run:26656,33b15c14f54f71a4a923ac264761eb3209784cf2@p2p.0d20d4b3-6890-4f00-b9f3-596ad3df6533.cryptodotorg.herd.run:26656,d2862ef8f86f9976daa0c6f59455b2b1452dc53b@p2p.a088961f-5dfd-4007-a15c-3a706d4be2c0.cryptodotorg.herd.run:26656,87c3adb7d8f649c51eebe0d3335d8f9e28c362f2@seed-0.crypto.org:26656,e1d7ff02b78044795371beb1cd5fb803f9389256@seed-1.crypto.org:26656,2c55809558a4e491e9995962e10c026eb9014655@seed-2.crypto.org:26656"
export OMNIFLIXHUBD_P2P_MAX_NUM_INBOUND_PEERS=500
export OMNIFLIXHUBD_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export OMNIFLIXHUBD_P2P_MAX_NUM_OUTBOUND_PEERS=60

export JUNOD_P2P_LADDR=tcp://0.0.0.0:2170
export JUNOD_RPC_LADDR=tcp://127.0.0.1:2171
export JUNOD_GRPC_ADDRESS=127.0.0.1:2172
export JUNOD_API_ADDRESS=tcp://127.0.0.1:2173
export JUNOD_NODE=tcp://127.0.0.1:2171
export JUNOD_P2P_PERSISTENT_PEERS="b1f46f1a1955fc773d3b73180179b0e0a07adce1@162.55.244.250:39656,7f593757c0cde8972ce929381d8ac8e446837811@178.18.255.244:26656,7b22dfc605989d66b89d2dfe118d799ea5abc2f0@167.99.210.65:26656,4bd9cac019775047d27f9b9cea66b25270ab497d@137.184.7.164:26656,bd822a8057902fbc80fd9135e335f0dfefa32342@65.21.202.159:38656,15827c6c13f919e4d9c11bcca23dff4e3e79b1b8@51.38.52.210:38656,e665df28999b2b7b40cff2fe4030682c380bf294@188.40.106.109:38656,92804ce50c85ff4c7cf149d347dd880fc3735bf4@34.94.231.154:26656,795ed214b8354e8468f46d1bbbf6e128a88fe3bd@34.127.19.222:26656"
export JUNOD_P2P_MAX_NUM_INBOUND_PEERS=500
export JUNOD_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export JUNOD_P2P_MAX_NUM_OUTBOUND_PEERS=60



export PERSISTENCECORE_P2P_LADDR=tcp://0.0.0.0:2080
export PERSISTENCECORE_RPC_LADDR=tcp://127.0.0.1:2081
export PERSISTENCECORE_GRPC_ADDRESS=127.0.0.1:2082
export PERSISTENCECORE_API_ADDRESS=tcp://127.0.0.1:2083
export PERSISTENCECORE_NODE=tcp://127.0.0.1:2081
export PERSISTENCECORE_P2P_SEEDS="27eb432ccd5e895c5c659659120d68b393dd8c60@35.247.65.183:26656,8e2f56098f182ffe2f6fb09280bafe13c63eb42f@46.101.176.149:26656,fff99a2e8f3c9473e4e5ee9a99611a2e599529fd@46.166.138.218:26656"
export PERSISTENCECORE_P2P_PERSISTENT_PEERS="876946a947850952383347724206d067d7032b22@3.137.86.151:26656,ecc00c5a7abd057ea5ca4a94c48d1d937bbab34a@34.118.19.56:26656,ac7e6aab726e842b92c06b8ebbf5a3616872ee80@128.1.133.107:26656,b9dab7a1a5ffd16d43b19e40a8020db84e8dfffd@3.14.116.246:44456,60385a36ea72a2985bd8450c95b8df8be2adebb8@54.95.235.242:26656,a92ff1da2020e5cbc9b05527e9e39c34a84e8a27@34.72.57.218:26656,e15524629aee25fea01f62d26c4e062bfda94b70@35.247.171.7:26656,7c106099b8d07085431a97387e5a5db2d1ecd71d@18.223.209.36:26656,b19a3cf4d9938b41539729d027bf2e3c1a4e1fbb@85.214.130.157:26656,7cc92a9e3dcad37e5e7b3adf7814c37070fa9787@161.97.187.189:26656,7b9839cd3e994c44cbd747d1ddc51ee695f60e58@157.90.134.48:26656,cfb529bd0325fc884296518655f1f315bc42dd0c@185.144.83.165:26656,01102f3c84e6602e30e1e39498e242cbb60a0b73@178.62.103.7:26656"
export PERSISTENCECORE_P2P_MAX_NUM_INBOUND_PEERS=500
export PERSISTENCECORE_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export PERSISTENCECORE_P2P_MAX_NUM_OUTBOUND_PEERS=60



export DIGD_P2P_LADDR=tcp://0.0.0.0:2090
export DIGD_RPC_LADDR=tcp://127.0.0.1:2091
export DIGD_GRPC_ADDRESS=127.0.0.1:2092
export DIGD_API_ADDRESS=tcp://127.0.0.1:2093
export DIGD_NODE=tcp://127.0.0.1:2091
export DIGD_P2P_SEEDS="8dc1863d1d23cf9ad7cbea215c19bcbe8bf39702@p2p.baaa7e56-cc71-4ae4-b4b3-c6a9d4a9596a.cryptodotorg.bison.run:26656,8a7922f3fb3fb4cfe8cb57281b9d159ca7fd29c6@p2p.aef59b2a-d77e-4922-817a-d1eea614aef4.cryptodotorg.bison.run:26656,494d860a2869b90c458b07d4da890539272785c9@p2p.fabc23d9-e0a1-4ced-8cd7-eb3efd6d9ef3.cryptodotorg.bison.run:26656,dc2540dabadb8302da988c95a3c872191061aed2@p2p.7d1b53c0-b86b-44c8-8c02-e3b0e88a4bf7.cryptodotorg.herd.run:26656,33b15c14f54f71a4a923ac264761eb3209784cf2@p2p.0d20d4b3-6890-4f00-b9f3-596ad3df6533.cryptodotorg.herd.run:26656,d2862ef8f86f9976daa0c6f59455b2b1452dc53b@p2p.a088961f-5dfd-4007-a15c-3a706d4be2c0.cryptodotorg.herd.run:26656,87c3adb7d8f649c51eebe0d3335d8f9e28c362f2@seed-0.crypto.org:26656,e1d7ff02b78044795371beb1cd5fb803f9389256@seed-1.crypto.org:26656,2c55809558a4e491e9995962e10c026eb9014655@seed-2.crypto.org:26656"
export DIGD_P2P_MAX_NUM_INBOUND_PEERS=500
export DIGD_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export DIGD_P2P_MAX_NUM_OUTBOUND_PEERS=60


export ANONED_P2P_LADDR=tcp://0.0.0.0:2100
export ANONED_RPC_LADDR=tcp://127.0.0.1:2101
export ANONED_GRPC_ADDRESS=127.0.0.1:2102
export ANONED_API_ADDRESS=tcp://127.0.0.1:2103
export ANONED_NODE=tcp://127.0.0.1:2101
export ANONED_P2P_SEEDS="8dc1863d1d23cf9ad7cbea215c19bcbe8bf39702@p2p.baaa7e56-cc71-4ae4-b4b3-c6a9d4a9596a.cryptodotorg.bison.run:26656,8a7922f3fb3fb4cfe8cb57281b9d159ca7fd29c6@p2p.aef59b2a-d77e-4922-817a-d1eea614aef4.cryptodotorg.bison.run:26656,494d860a2869b90c458b07d4da890539272785c9@p2p.fabc23d9-e0a1-4ced-8cd7-eb3efd6d9ef3.cryptodotorg.bison.run:26656,dc2540dabadb8302da988c95a3c872191061aed2@p2p.7d1b53c0-b86b-44c8-8c02-e3b0e88a4bf7.cryptodotorg.herd.run:26656,33b15c14f54f71a4a923ac264761eb3209784cf2@p2p.0d20d4b3-6890-4f00-b9f3-596ad3df6533.cryptodotorg.herd.run:26656,d2862ef8f86f9976daa0c6f59455b2b1452dc53b@p2p.a088961f-5dfd-4007-a15c-3a706d4be2c0.cryptodotorg.herd.run:26656,87c3adb7d8f649c51eebe0d3335d8f9e28c362f2@seed-0.crypto.org:26656,e1d7ff02b78044795371beb1cd5fb803f9389256@seed-1.crypto.org:26656,2c55809558a4e491e9995962e10c026eb9014655@seed-2.crypto.org:26656"
export ANONED_P2P_MAX_NUM_INBOUND_PEERS=500
export ANONED_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export ANONED_P2P_MAX_NUM_OUTBOUND_PEERS=60


export BEACHD_P2P_LADDR=tcp://0.0.0.0:2110
export BEACHD_RPC_LADDR=tcp://127.0.0.1:2111
export BEACHD_GRPC_ADDRESS=127.0.0.1:2112
export BEACHD_API_ADDRESS=tcp://127.0.0.1:2113
export BEACHD_NODE=tcp://127.0.0.1:2111
export BEACHD_P2P_SEEDS="8dc1863d1d23cf9ad7cbea215c19bcbe8bf39702@p2p.baaa7e56-cc71-4ae4-b4b3-c6a9d4a9596a.cryptodotorg.bison.run:26656,8a7922f3fb3fb4cfe8cb57281b9d159ca7fd29c6@p2p.aef59b2a-d77e-4922-817a-d1eea614aef4.cryptodotorg.bison.run:26656,494d860a2869b90c458b07d4da890539272785c9@p2p.fabc23d9-e0a1-4ced-8cd7-eb3efd6d9ef3.cryptodotorg.bison.run:26656,dc2540dabadb8302da988c95a3c872191061aed2@p2p.7d1b53c0-b86b-44c8-8c02-e3b0e88a4bf7.cryptodotorg.herd.run:26656,33b15c14f54f71a4a923ac264761eb3209784cf2@p2p.0d20d4b3-6890-4f00-b9f3-596ad3df6533.cryptodotorg.herd.run:26656,d2862ef8f86f9976daa0c6f59455b2b1452dc53b@p2p.a088961f-5dfd-4007-a15c-3a706d4be2c0.cryptodotorg.herd.run:26656,87c3adb7d8f649c51eebe0d3335d8f9e28c362f2@seed-0.crypto.org:26656,e1d7ff02b78044795371beb1cd5fb803f9389256@seed-1.crypto.org:26656,2c55809558a4e491e9995962e10c026eb9014655@seed-2.crypto.org:26656"
export BEACHD_P2P_MAX_NUM_INBOUND_PEERS=500
export BEACHD_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export BEACHD_P2P_MAX_NUM_OUTBOUND_PEERS=60


export SIFNODED_P2P_LADDR=tcp://0.0.0.0:2110
export SIFNODED_RPC_LADDR=tcp://127.0.0.1:2111
export SIFNODED_GRPC_ADDRESS=127.0.0.1:2112
export SIFNODED_API_ADDRESS=tcp://127.0.0.1:2113
export SIFNODED_NODE=tcp://127.0.0.1:2111
export SIFNODED_P2P_PERSISTENT_PEERS="663dec65b754aceef5fcccb864048305208e7eb2@34.248.110.88:26656,ecefab27ef1954f5a14b38bb29d437c8a1b54107@34.247.118.201:26656"
export SIFNODED_P2P_MAX_NUM_INBOUND_PEERS=500
export SIFNODED_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export SIFNODED_P2P_MAX_NUM_OUTBOUND_PEERS=60

export IRIS_P2P_LADDR=tcp://0.0.0.0:2120
export IRIS_RPC_LADDR=tcp://127.0.0.1:2121
export IRIS_GRPC_ADDRESS=127.0.0.1:2122
export IRIS_API_ADDRESS=tcp://127.0.0.1:2123
export IRIS_NODE=tcp://127.0.0.1:2121
export IRIS_P2P_PERSISTENT_PEERS="fdc0406afdd3acc63f74f5439e09104f663a7c1f@44.241.177.178:26656,090bcbe5302e6104821a96c4899912870db04cb9@52.11.128.123:26656,83b3f989f3ce089afdf733f8aa06e792d7e00c08@3.34.6.30:26656,87f18756b93d835c59fe5ce2a8da51858837eb5b@54.180.15.28:26656,90e48220190b16cad95145b6213d512d703e5617@138.197.158.189:26656,7fad2da10c41b0c1e3c2ce6e708f7fa817b5e19d@135.181.56.26:46656"
export IRIS_P2P_MAX_NUM_INBOUND_PEERS=500
export IRIS_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export IRIS_P2P_MAX_NUM_OUTBOUND_PEERS=60

export IXOD_P2P_LADDR=tcp://0.0.0.0:2130
export IXOD_RPC_LADDR=tcp://127.0.0.0:2131
export IXOD_GRPC_ADDRESS=127.0.0.1:2132
export IXOD_API_ADDRESS=tcp://127.0.0.1:2123
export IXOD_NODE=tcp://127.0.0.1:2131
export IXOD_P2P_MAX_NUM_OUTBOUND_PEERS=60
export IXOD_P2P_MAX_NUM_INBOUND_PEERS=500
export IXOD_SNAPSHOT_INTERVAL=1000


export EMD_P2P_LADDR=tcp://0.0.0.0:2140
export EMD_RPC_LADDR=tcp://127.0.0.1:2141
export EMD_GRPC_ADDRESS=127.0.0.1:2142
export EMD_API_ADDRESS=tcp://127.0.0.1:2143
export EMD_P2P_PERSISTENT_PEERS="17533be7691494a0bc2dbd174930fa6a57b5b98c@3.69.44.220:30656,3f6ce97077a9bddd6dd637cd64c140eabdebbda5@3.68.159.237:30656,170255a4a9b120786d2d6c3931ebf0125087cca0@62.171.171.139:26656"
export EMD_NODE=tcp://127.0.0.1:2141
export EMD_P2P_MAX_NUM_INBOUND_PEERS=500
export EMD_P2P_MAX_NUM_OUTBOUND_PEERS=60
export EMD_PRUNING=nothing

export MTM_P2P_LADDR=tcp://0.0.0.0:2150
export MTM_RPC_LADDR=tcp://127.0.0.1:2151
export MTM_GRPC_ADDRESS=127.0.0.1:2152
export MTM_API_ADDRESS=tcp://127.0.0.1:2153
export MTM_NODE=tcp://127.0.0.1:2151
export MTM_P2P_PERSISTENT_PEERS="7f6c1ab8a186cef7145d74e781812906c0adac22@135.181.118.39:26656,885cc6b8bcc36d9fd0489f4bfa2d845c9b60f354@5.189.132.164:26656,a613bf021d77045187b3f919e4a24c719bb862f4@45.77.62.126:26656,afc91b43fcf5b1def927dc102b061607f131ad28@167.172.38.41:26656,cde69328bf16cc96f14ac9925a1960d3b21e4f8b@66.206.17.178:26656"
export MTM_NODE=tcp://127.0.0.1:2151
export MTM_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export MTM_P2P_MAX_NUM_OUTBOUND_PEERS=10


export TERRAD_P2P_LADDR=tcp://0.0.0.0:2160
export TERRAD_RPC_LADDR=tcp://127.0.0.1:2161
export TERRAD_GRPC_ADDRESS=127.0.0.1:2162
export TERRAD_API_ADDRESS=tcp://127.0.0.1:2163
export TERRAD_GRPC_WEB_ADDRESS=tcp://127.0.0.1:2164
export TERRAD_P2P_SEED_NODES=e999fc20aa5b87c1acef8677cf495ad85061cfb9@seed.terra.delightlabs.io:26656,6d8e943c049a80c161a889cb5fcf3d184215023e@public-seed2.terra.dev:26656,87048bf71526fb92d73733ba3ddb79b7a83ca11e@public-seed.terra.dev:26656
export TERRAD_NODE=tcp://127.0.0.1:2161
export TERRAD_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export TERRAD_P2P_MAX_NUM_OUTBOUND_PEERS=100
export TERRAD_P2P_UPNP=true
export TERRAD_P2P_MAX_NUM_INBOUND_PEERS=500




export PYLONSD_RPC_LADDR=tcp://127.0.0.1:2201
export PYLONSD_GRPC_ADDRESS=127.0.0.1:2202
export PYLONSD_API_ADDRESS=tcp://127.0.0.1:2203
export PYLONSD_GRPC_WEB_ADDRESS=127.0.0.1:2204
export PYLONSD_NODE=tcp://127.0.0.1:2201
export PYLONSD_P2P_MAX_NUM_OUTBOUND_PEERS=100
export PYLONSD_P2P_MAX_NUM_INBOUND_PEERS=500
export PYLONSD_P2P_SEEDS=0a8b420620d19ed3b1ac3c7ea55be34dc0396fbd@34.73.221.157:32237,ec6e6522b0b1e57b6a5fb524238523e51dbe1087@34.74.106.29:30464

# likecoin
export LIKED_API_ADDRESS=tcp://127.0.0.1:3103
export LIKED_P2P_LADDR=tcp://0.0.0.0:3100
export LIKED_RPC_LADDR=tcp://0.0.0.0:3101
export LIKED_GRPC_ADDRESS=127.0.0.1:3102
export LIKED_NODE=tcp://127.0.0.1:3101
export PYLONSD_NODE=tcp://127.0.0.1:2201
export PYLONSD_P2P_MAX_NUM_OUTBOUND_PEERS=100
export PYLONSD_P2P_MAX_NUM_INBOUND_PEERS=500
export PYLONSD_P2P_SEEDS=0a8b420620d19ed3b1ac3c7ea55be34dc0396fbd@34.73.221.157:32237,ec6e6522b0b1e57b6a5fb524238523e51dbe1087@34.74.106.29:30464

# Injective
export PYLONSD_RPC_LADDR=tcp://127.0.0.1:2201
export PYLONSD_GRPC_ADDRESS=127.0.0.1:2202
export PYLONSD_API_ADDRESS=tcp://127.0.0.1:2203
export PYLONSD_GRPC_WEB_ADDRESS=127.0.0.1:2204
export PYLONSD_NODE=tcp://127.0.0.1:2201
export PYLONSD_P2P_MAX_NUM_OUTBOUND_PEERS=100
export PYLONSD_P2P_MAX_NUM_INBOUND_PEERS=500
export PYLONSD_P2P_SEEDS=0a8b420620d19ed3b1ac3c7ea55be34dc0396fbd@34.73.221.157:32237,ec6e6522b0b1e57b6a5fb524238523e51dbe1087@34.74.106.29:30464

# Starname:
export STARNAMED_P2P_LADDR=tcp://0.0.0.0:2070
export STARNAMED_RPC_LADDR=tcp://127.0.0.1:2071
export STARNAMED_GRPC_ADDRESS=127.0.0.1:2072
export STARNAMED_API_ADDRESS=tcp://127.0.0.1:2073
export STARNAMED_NODE=tcp://127.0.0.1:2071
export STARNAMED_P2P_PERSISTENT_PEERS="ca133187b37b59d2454812cfcf31b6211395adec@167.99.194.126:16656,1c7e014b65f7a3ea2cf48bffce78f5cbcad2a0b7@13.37.85.253:26656,8c64a2127cc07d4570756b61f83af60d34258398@13.37.61.32:26656,9aabe0ac122f3104d8fc098e19c66714c6f1ace9@3.37.140.5:26656,faedef1969911d24bf72c56fc01326eb891fa3b7@63.250.53.45:16656,94ac1c02b4e2ca3fb2706c91a68b8030ed3615a1@35.247.175.128:16656,be2235996b1c785a9f57eed25fd673ca111f0bae@52.52.89.64:26656,f63d15ab7ed55dc75f332d0b0d2b01d529d5cbcd@212.71.247.11:26656,f5597a7ed33bc99eb6ba7253eb8ac76af27b4c6d@138.201.20.147:26656"
export STARNAMED_P2P_MAX_NUM_INBOUND_PEERS=500
export STARNAMED_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export STARNAMED_P2P_MAX_NUM_OUTBOUND_PEERS=60


# BitCanna:


export BCNAD_P2P_LADDR=tcp://0.0.0.0:420
export BCNAD_RPC_LADDR=tcp://0.0.0.0:421
export BCNAD_GRPC_ADDRESS=0.0.0.0:422
export BCNAD_API_ADDRESS=tcp://0.0.0.0:423
export BCNAD_P2P_SEED_NODES=d6aa4c9f3ccecb0cc52109a95962b4618d69dd3f@seed1.bitcanna.io:26656,23671067d0fd40aec523290585c7d8e91034a771@seed2.bitcanna.io:26656
export BCNAD_NODE=tcp://127.0.0.1:421
export BCNAD_STATE_SYNC_SNAPSHOT_INTERVAL=1000
export BCNAD_P2P_MAX_NUM_OUTBOUND_PEERS=100
export BCNAD_P2P_UPNP=true
export BCNAD_P2P_MAX_NUM_INBOUND_PEERS=500
