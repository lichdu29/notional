# Infrastructure

## Products
All of Notional's products are 100% open source, though some do have unusal licenses.

* [SOS](https://github.com/notional-labs/sos) Lightweight operating system based on Arch Linux
* [Archlinux-Docker](https://github.com/faddat/archlinux-docker) Arm64/amd64 multiplatform docker image for Arch
* [Validatron](https://whimsical.com/validatron-PbUypC8tVMU8DxCFNLdDFu) designs and equipment for edge validation
* [ipfsync](https://github.com/notional-labs/ipfscync) IPFS collaborative cluster enabling syncs that saturate a 10gbps line
* [tradeberry](https://github.com/notional-labs/tradeberry) Raspberry pi image that allows private usage of Osmosis


We have been working with https://pcbviet.com on open source hardware, and hope to run tradeberry on a Minimus PC sometime in 2021.


## Tenderseeds

We operate Tenderseed instances for every #ibcgang blockchain on Akash.

Go to [Node](#Nodes) section to get the seed of chains.

## State Sync Note
To enable state sync on some chains like Osmosis, Gaia, ... follow these instructions (Osmosis Example):
```bash
cd /$HOME/.osmosid/config
# Enable State Sync
sed -i 's/enable = false/enable = true/' config.toml
# Add RPC
sed -i 's/rpc_servers = ""/rpc_servers = "https:\/\/osmosis.validator.network:443,https:\/\/osmosis-1.technofractal.com:443,https:\/\/rpc-osmosis.blockapsis.com:443"/' config.toml
# Get latest trusted height and trusted hash
curl -s https://osmosis.validator.network/commit | jq "{height: .result.signed_header.header.height, hash: .result.signed_header.commit.block_id.hash}"
# Add trusted height and trusted hash
sed -i 's/trust_height = 0/trust_height = <BLOCK_HEIGHT>/' config.toml
sed -i 's/trust_hash = ""/trust_hash = "<BLOCK_HASH>"/' config.toml
```

## Archive Nodes
Notional maintains archive nodes for BSC, Ethereum, Bitcoin, and every IBC-enabled Cosmos-SDK blockchain.  Documentation is kept in node-setup/archive and takes the approach that archive nodes are best setup slowly, even if that takes days or requires swapping out the binary during sync.  They're intended to be full, proper archives.  Time and expense are not spared in getting them into operation.  We run our archive nodes in three places:

* Hetzner.de (rented hardware)
* Notional HQ (own hardware)

Our archive nodes feed into our IPFS snapshot distribution system.

## Multi-chain Port Standard
### Ports

Each chain has 10 ports it can use.  WIP.


   Chain         | Port Range | Network
-----------------|------------|-------------
 Bitcanna        | 420-429    | bitcanna-1
 Osmosis         | 2000-2009  | osmosis-1
 Gaia            | 2010-2019  | cosmoshub-4
 Akash           | 2020-2029  | akashnet-2
 Sentinel        | 2030-2039  | sentinelhub-2
 Crypto.org      | 2040-2049  | crypto-org-chain-mainnet-1
 Cyber           | 2050-2059  | bostrom
 Regen           | 2060-2069  | regen-1 
 Juno            | 2070-2079  | juno-1
 PersistenceCore | 2080-2089  | core-1
 Desmos          | 2090-2099  | desmos-mainnet
 Kichain         | 2100-2109  | kichain-2
 Sifchain        | 2110-2119  | sifchain-1
 Iris            | 2120-2129  | irishub-1
 Ixo             | 2130-2139  | impacthub-3
 E-money         | 2140-2149  | emoney-3
 Microtick       | 2150-2159  | microtick-1
 Terra           | 2160-2169  | columbus-5
 Starname        | 2170-2179  | iov-mainnet-ibc
 Likecoin        | 2180-2189  | likecoin-mainnet-2
 Stargaze        | 2190-2199  | stargaze-1
 Kava            | 2200-2209  | kava-9
 Band            | 2210-2219  | laozi-mainnet
 Dig             | 2220-2229  | dig-1
 Evmos TN2       | 2230-2239  | evmos_9000-2
 Chihuahua       | 2240-2249  | chihuahua-1
 Cheqd           | 2250-2259  | cheqd-mainnet-1
 Axelar          | 2260-2269  | axelar-dojo-1
 Comdex          | 2270-2279  | comdex-1
 Anone           | 2280-2289  | anone-testnet-1
 Konstellation   | 2290-2299  | darchub
 Omniflix        | 2300-2309  | omniflixhub-1
 GravityBridge   | 2310-2319  | gravity-bridge-3

   Service         | Port  
-------------------|------ 
 p2p               | xxx0 
 rpc               | xxx1 
 grpc              | xxx2 
 grpc-web          | xxx3 
 api               | xxx4 
 TinySeed          | xxx5
 load balanced rpc | xxx9 

### Nodes
Here are some nodes id of the chains
 Chain       | Node 
 ------------|----------- 
bitcanna     | d6aa4c9f3ccecb0cc52109a95962b4618d69dd3f@seed1.bitcanna.io:26656,23671067d0fd40aec523290585c7d8e91034a771@seed2.bitcanna.io:26656
 Osmosis     | 3fea02d121cb24503d5fbc53216a527257a9ab55@143.198.145.208:26656,e7916387e05acd53d1b8c0f842c13def365c7bb6@176.9.64.212:26656,785bc83577e3980545bac051de8f57a9fd82695f@194.233.164.146:26656,421e7ffd6c239cc51620e2ec2330d392a7baeeb3@207.246.109.0:26656,778fdedf6effe996f039f22901a3360bc838b52e@161.97.187.189:36656,2115945f074ddb038de5d835e287fa03e32f0628@95.217.43.85:26656,23142ab5d94ad7fa3433a889dcd3c6bb6d5f247d@95.217.193.163:26656,2308bed9e096a8b96d2aa343acc1147813c59ed2@3.225.38.25:26656,085f62d67bbf9c501e8ac84d4533440a1eef6c45@95.217.196.54:26656,f515a8599b40f0e84dfad935ba414674ab11a668@osmosis.blockpane.com:26656
 Gaia        | bf8328b66dceb4987e5cd94430af66045e59899f@public-seed.cosmos.vitwit.com:26656,cfd785a4224c7940e9a10f6c1ab24c343e923bec@164.68.107.188:26656,d72b3011ed46d783e369fdf8ae2055b99a1e5074@173.249.50.25:26656,ba3bacc714817218562f743178228f23678b2873@public-seed-node.cosmoshub.certus.one:26656,3c7cad4154967a294b3ba1cc752e40e8779640ad@84.201.128.115:26656,366ac852255c3ac8de17e11ae9ec814b8c68bddb@51.15.94.196:26656
 Akash       |  27eb432ccd5e895c5c659659120d68b393dd8c60@35.247.65.183:26656,9180b99a5be3443677e0f57fc5f40e8f071bdcd8@161.35.239.0:51656,47c9acc0e7d9b244a6404458e76d50b6284bfbbb@142.93.77.25:26656,ab7b55588ea3f4f7a477e852aa262959e54117cd@3.235.249.94:26656,4acf579e2744268f834c713e894850995bbf0ffa@50.18.31.225:26656,3691ac1f56389ffec8579c13a6eb8eca41cf8ae3@54.219.88.246:26656,86afe23f116ba4754a19819a55d153008eb74b48@15.164.87.75:26656,6fbc3808f7d6c961e84944ae2d8c800a8bbffbb4@138.201.159.100:26656,a2a3ffe7ac122a218e1f59c32a670f04b8fd3033@165.22.69.102:26656
 Sentinel    | 152bad169bfde238d24b8e2403d72c092adc107b@54.169.185.248:26656,57dbef4a8637f4c14dc5f8a4070ff07cc3de8380@13.212.44.171:26656,cb9a308bd21b745ecd58236a08bc60046b06fec3@13.233.250.145:26656,a77f6a094578dad899e2f40e0626b4c6d4705311@3.36.165.232:26656,5f7164bbf0e74bc0b7bc624c631b559bde6d52b4@165.22.65.48:26656,647e54e22cfcdf97b42ada11fcef2f0b5bd81230@35.163.249.152:31358,387027e3b1180d3a619cbbf3462704a490785963@54.176.90.228:26656,b90f16d19db39412616f3d36da9ac247df6a3b40@162.55.132.230:2030,8a210f1bcfc9015a7bc18dcc5add29c0dce3f2dc@95.217.127.27:26656,bdf763de9476a9b2934490076435ab7717780d8c@40.127.237.227:26656,ec5b37a341161a927085513e53342f74c68be8ed@65.21.129.165:26656,82588f011491c6100d922d133f52fc23460b9231@95.216.230.147:26656,50506010b7ec7abd3f777337615b1a67c4d9298b@144.76.154.125:26656
Crypto.org   | 8dc1863d1d23cf9ad7cbea215c19bcbe8bf39702@p2p.baaa7e56-cc71-4ae4-b4b3-c6a9d4a9596a.cryptodotorg.bison.run:26656,8a7922f3fb3fb4cfe8cb57281b9d159ca7fd29c6@p2p.aef59b2a-d77e-4922-817a-d1eea614aef4.cryptodotorg.bison.run:26656,494d860a2869b90c458b07d4da890539272785c9@p2p.fabc23d9-e0a1-4ced-8cd7-eb3efd6d9ef3.cryptodotorg.bison.run:26656,dc2540dabadb8302da988c95a3c872191061aed2@p2p.7d1b53c0-b86b-44c8-8c02-e3b0e88a4bf7.cryptodotorg.herd.run:26656,33b15c14f54f71a4a923ac264761eb3209784cf2@p2p.0d20d4b3-6890-4f00-b9f3-596ad3df6533.cryptodotorg.herd.run:26656,d2862ef8f86f9976daa0c6f59455b2b1452dc53b@p2p.a088961f-5dfd-4007-a15c-3a706d4be2c0.cryptodotorg.herd.run:26656,87c3adb7d8f649c51eebe0d3335d8f9e28c362f2@seed-0.crypto.org:26656,e1d7ff02b78044795371beb1cd5fb803f9389256@seed-1.crypto.org:26656,2c55809558a4e491e9995962e10c026eb9014655@seed-2.crypto.org:26656
cyber        | a54a9d04a8b42a0bd495a93f18efcf2a272277e0@162.55.132.230:26656
 Regen       |  69975e7afdf731a165e40449fcffc75167a084fc@104.131.169.70:26656 
 Juno        | b1f46f1a1955fc773d3b73180179b0e0a07adce1@162.55.244.250:39656,7f593757c0cde8972ce929381d8ac8e446837811@178.18.255.244:26656,7b22dfc605989d66b89d2dfe118d799ea5abc2f0@167.99.210.65:26656,4bd9cac019775047d27f9b9cea66b25270ab497d@137.184.7.164:26656,bd822a8057902fbc80fd9135e335f0dfefa32342@65.21.202.159:38656,15827c6c13f919e4d9c11bcca23dff4e3e79b1b8@51.38.52.210:38656,e665df28999b2b7b40cff2fe4030682c380bf294@188.40.106.109:38656,92804ce50c85ff4c7cf149d347dd880fc3735bf4@34.94.231.154:26656,795ed214b8354e8468f46d1bbbf6e128a88fe3bd@34.127.19.222:26656
persistencecore | 27eb432ccd5e895c5c659659120d68b393dd8c60@35.247.65.183:26656,8e2f56098f182ffe2f6fb09280bafe13c63eb42f@46.101.176.149:26656,fff99a2e8f3c9473e4e5ee9a99611a2e599529fd@46.166.138.218:26656,876946a947850952383347724206d067d7032b22@3.137.86.151:26656,ecc00c5a7abd057ea5ca4a94c48d1d937bbab34a@34.118.19.56:26656,ac7e6aab726e842b92c06b8ebbf5a3616872ee80@128.1.133.107:26656,b9dab7a1a5ffd16d43b19e40a8020db84e8dfffd@3.14.116.246:44456,60385a36ea72a2985bd8450c95b8df8be2adebb8@54.95.235.242:26656,a92ff1da2020e5cbc9b05527e9e39c34a84e8a27@34.72.57.218:26656,e15524629aee25fea01f62d26c4e062bfda94b70@35.247.171.7:26656,7c106099b8d07085431a97387e5a5db2d1ecd71d@18.223.209.36:26656,b19a3cf4d9938b41539729d027bf2e3c1a4e1fbb@85.214.130.157:26656,7cc92a9e3dcad37e5e7b3adf7814c37070fa9787@161.97.187.189:26656,7b9839cd3e994c44cbd747d1ddc51ee695f60e58@157.90.134.48:26656,cfb529bd0325fc884296518655f1f315bc42dd0c@185.144.83.165:26656,01102f3c84e6602e30e1e39498e242cbb60a0b73@178.62.103.7:26656
 desmos      | 9bde6ab4e0e00f721cc3f5b4b35f3a0e8979fab5@seed-1.mainnet.desmos.network:26656,5c86915026093f9a2f81e5910107cf14676b48fc@seed-2.mainnet.desmos.network:26656,45105c7241068904bdf5a32c86ee45979794637f@seed-3.mainnet.desmos.network:26656
 sifchain    | 663dec65b754aceef5fcccb864048305208e7eb2@34.248.110.88:26656,ecefab27ef1954f5a14b38bb29d437c8a1b54107@34.247.118.201:26656
 Iris        | fdc0406afdd3acc63f74f5439e09104f663a7c1f@44.241.177.178:26656,090bcbe5302e6104821a96c4899912870db04cb9@52.11.128.123:26656,83b3f989f3ce089afdf733f8aa06e792d7e00c08@3.34.6.30:26656,87f18756b93d835c59fe5ce2a8da51858837eb5b@54.180.15.28:26656,90e48220190b16cad95145b6213d512d703e5617@138.197.158.189:26656,7fad2da10c41b0c1e3c2ce6e708f7fa817b5e19d@135.181.56.26:46656,ebfb43ca1b592b5f8a1faf3e2aa1a34e8e1099cc@iris01.dokia.cloud:26656,a17d7923293203c64ba75723db4d5f28e642f469@seed-2.mainnet.irisnet.org:26656,fbaf634a899c7aab3c159ce1a345122bbeca3717@209.133.200.154:26656,92fadc989ed29aee0d46afce3226f8565d1f36cb@144.91.116.17:46656,895d5a5009d042108783a6aeb0991c5186a46617@144.76.96.47:26656,40821d0ade83d582b29d748f37ecf7bef0a823d0@66.42.116.195:26656,f4af63df2f5c63428be776e56ffc2899fa47afdf@47.101.160.78:26656,08e2f9453541b104df84efa68ab2f0d242eb829b@176.9.47.69:26656,db3dacf404840e067b2f59e304cb2b6662ec0cea@173.212.212.252:26656,87525da8c830da2c3a861638a77f601278efd353@185.181.103.142:26656,4ac6200974d3fd80a8e49d145a2c254ed37a9b9a@159.69.106.156:26656,4e02a4b4f4350ea2b770cd03dc41fedcadb13176@159.69.55.206:26656,5d659b3edde90344489210f5be90c0682b54b997@49.232.82.149:26656,63f5646b5f9ce927241383a091b60f797796588f@143.110.240.198:26656,84cc32adca3986b35953886ad075431d318a98b5@52.214.130.28:46656
 Ixo | cbe8c6a5a77f861db8edb1426b734f2cf1fa4020@18.166.133.210:26656,36e4738c7efcf353d3048e5e6073406d045bae9d@80.64.208.42:26656,f0d4546fa5e0c2d84a4244def186b9da3c12ba1a@46.166.138.214:26656,c95af93f0386f8e19e65997262c9f874d1901dc5@18.163.242.188:26656
emoney       | 17533be7691494a0bc2dbd174930fa6a57b5b98c@3.69.44.220:30656,3f6ce97077a9bddd6dd637cd64c140eabdebbda5@3.68.159.237:30656,170255a4a9b120786d2d6c3931ebf0125087cca0@62.171.171.139:26656
microtick    | 7f6c1ab8a186cef7145d74e781812906c0adac22@135.181.118.39:26656,885cc6b8bcc36d9fd0489f4bfa2d845c9b60f354@5.189.132.164:26656,a613bf021d77045187b3f919e4a24c719bb862f4@45.77.62.126:26656,afc91b43fcf5b1def927dc102b061607f131ad28@167.172.38.41:26656,cde69328bf16cc96f14ac9925a1960d3b21e4f8b@66.206.17.178:26656
terra        | e999fc20aa5b87c1acef8677cf495ad85061cfb9@seed.terra.delightlabs.io:26656,6d8e943c049a80c161a889cb5fcf3d184215023e@public-seed2.terra.dev:26656,87048bf71526fb92d73733ba3ddb79b7a83ca11e@public-seed.terra.dev:26656
 Starname    | ca133187b37b59d2454812cfcf31b6211395adec@167.99.194.126:16656,1c7e014b65f7a3ea2cf48bffce78f5cbcad2a0b7@13.37.85.253:26656,8c64a2127cc07d4570756b61f83af60d34258398@13.37.61.32:26656,9aabe0ac122f3104d8fc098e19c66714c6f1ace9@3.37.140.5:26656,faedef1969911d24bf72c56fc01326eb891fa3b7@63.250.53.45:16656,94ac1c02b4e2ca3fb2706c91a68b8030ed3615a1@35.247.175.128:16656,be2235996b1c785a9f57eed25fd673ca111f0bae@52.52.89.64:26656,f63d15ab7ed55dc75f332d0b0d2b01d529d5cbcd@212.71.247.11:26656,f5597a7ed33bc99eb6ba7253eb8ac76af27b4c6d@138.201.20.147:26656
kichain      | 81396d4703a2e3cbd136c7324e4df5686fd48218@35.180.8.214:26656,c597db55d9a609b8b77c3d37ecf1fa9a67117cc0@144.217.82.4:26656,50af457247b59aa558a26a14bd7ac4bf86eeae70@195.201.164.223:26656
likecoin     | 94e7f7e4b879becd0b9718a2c7d7a715b095f524@65.21.202.37:3100
stargaze     | a54a9d04a8b42a0bd495a93f18efcf2a272277e0@162.55.132.230:4000
kava         | 2c11fb480bb842e2fc181ab57c11baba0131dca3@44.196.226.19:26656
band         | 8d42bdcb6cced03e0b67fa3957e4e9c8fd89015a@34.87.86.195:26656,543e0cab9c3016a0e99775443a17bcf163038912@34.150.156.78:26656
dig          | 33f4788e1c6a378b929c66f31e8d253b9fd47c47@194.163.154.251:26656,64eccffdc60a206227032d3a021fbf9dfc686a17@194.163.156.84:26656,be7598b2d56fb42a27821259ad14aff24c40f3d2@172.16.152.118:26656,f446e37e47297ce9f8951957d17a2ae9a16db0b8@137.184.67.162:26656,ab2fa2789f481e2856a5d83a2c3028c5b215421d@144.91.117.49:26656,e9e89250b40b4512237c77bd04dc76c06a3f8560@185.214.135.205:26656,1539976f4ee196f172369e6f348d60a6e3ec9e93@159.69.147.189:26656,85316823bee88f7b05d0cfc671bee861c0237154@95.217.198.243:26656,eb55b70c9fd8fc0d5530d0662336377668aab3f9@185.194.219.128:26656
evmos TN2    | 6f0bbcf559a3eab1c5594062d587ccec4b4bade2@evmos-seed.artifact-staking.io:26656,faa31510d9280e74e7f2e767a62023bd5c896c27@evmos-testnet.mercury-nodes.net:29447
chihuahua    | 4936e377b4d4f17048f8961838a5035a4d21240c@chihuahua-seed-01.mercury-nodes.net:29540
cheqd        | debcb3fa7d40e681d98bcc7d22278fd58a34b73a@144.76.183.180:1234,258a9bfb822637bfca87daaab6181c10e7fd0910@seed1.eu.cheqd.net:26656,f565ff792b20977face9817df6acb268d41d4092@seed2.eu.cheqd.net:26656
Axelar       | 3d67d0646cddcc203b41434aceea64ade22ba6fc@k8s-mainnet-axelarco-79b464ee93-f03cb16c57cf7cb2.elb.us-east-2.amazonaws.com:26656
Comdex       | 08ab4552a74dd7e211fc79432918d35818a67189@52.69.58.231:26656,449a0f1b7dafc142cf23a1f6166bbbf035edfb10@13.232.85.66:26656,5b27a6d4cf33909c0e5b217789e7455e261941d1@15.222.29.207:26656 
Omniflix     | 9d75a06ebd3732a041df459849c21b87b2c55cde@35.187.240.195:26656,19feae28207474eb9f168fff9720fd4d418df1ed@35.240.196.102:26656,78cea79586e383e70e41e3c2f145d2d99a7c0861@88.198.62.198:2300
GravityBridge| 2b089bfb4c7366efb402b48376a7209632380c9c@65.19.136.133:26656,63e662f5e048d4902c7c7126291cf1fc17687e3c@95.211.103.175:26656
