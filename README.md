# Udacity Blockchain Capstone

The capstone will build upon the knowledge you have gained in the course in order to build a decentralized housing product. 

# Project Resources

* [Remix - Solidity IDE](https://remix.ethereum.org/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Truffle Framework](https://truffleframework.com/)
* [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
* [Open Zeppelin ](https://openzeppelin.org/)
* [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
* [Docker](https://docs.docker.com/install/)
* [ZoKrates](https://github.com/Zokrates/ZoKrates)


## Run Zokrates
```
docker run -v ${PROJECT_PATH}:/home/zokrates/code -it zokrates/zokrates /bin/bash
```
```
zokrates compile -i square.code
```
```
zokrates setup
```
```
zokrates compute-witness -a 3 9
```
```
zokrates generate-proof
```
```
zokrates export-verifier
```

## Test

```truffle test
```

## Deployment

```
>  Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 29970705 (0x1c95111)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0x9a1f039d180b5df2b40142eb898faa7080fea47ebc49ef80beab3a463e5375fb
   > Blocks: 2            Seconds: 17
   > contract address:    0x2CfE61E747b57E8Ec63b645B2cbB344a0b5ebe94
   > block number:        9933390
   > block timestamp:     1641313375
   > account:             0xB214b60bA38Eea5BfEcbCBd9FB308613228F4250
   > balance:             0.194740510934686919
   > gas used:            236258 (0x39ae2)
   > gas price:           1.000000011 gwei
   > value sent:          0 ETH
   > total cost:          0.000236258002598838 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 9933391)
   > confirmation number: 2 (block: 9933392)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.000236258002598838 ETH


2_deploy_contracts.js
=====================

   Replacing 'Verifier'
   --------------------
   > transaction hash:    0x8f3de31f218e07194e59a8ad65bd52b2b1854c3d88b22f85ec0d841d966e968f
   > Blocks: 3            Seconds: 37
   > contract address:    0xDa7524bd8557da6eaE0DA9eb8ECEE86748f52246
   > block number:        9933407
   > block timestamp:     1641313630
   > account:             0xB214b60bA38Eea5BfEcbCBd9FB308613228F4250
   > balance:             0.193682888920017515
   > gas used:            1011854 (0xf708e)
   > gas price:           1.000000014 gwei
   > value sent:          0 ETH
   > total cost:          0.001011854014165956 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 9933408)
   > confirmation number: 2 (block: 9933409)

   Replacing 'SolnSquareVerifier'
   ------------------------------
   > transaction hash:    0x5d7295f5f93b4d476b0f5b44876862358360e170ff89ca3069d3f637443615e4
   > Blocks: 1            Seconds: 13
   > contract address:    0x55cB78200900563f5f33A1C8BFb44615ba6421Cb
   > block number:        9933410
   > block timestamp:     1641313675
   > account:             0xB214b60bA38Eea5BfEcbCBd9FB308613228F4250
   > balance:             0.18998209786450565
   > gas used:            3700791 (0x387837)
   > gas price:           1.000000015 gwei
   > value sent:          0 ETH
   > total cost:          0.003700791055511865 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 9933411)
   > confirmation number: 2 (block: 9933412)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.004712645069677821 ETH


Summary
=======
> Total deployments:   3
> Final cost:          0.004948903072276659 ETH

```

## Contract address

[Verifier](https://rinkeby.etherscan.io/address/0xDa7524bd8557da6eaE0DA9eb8ECEE86748f52246) -  0xDa7524bd8557da6eaE0DA9eb8ECEE86748f52246

[SolnSquareVerifier](https://rinkeby.etherscan.io/address/0x55cB78200900563f5f33A1C8BFb44615ba6421Cb) - 0x55cB78200900563f5f33A1C8BFb44615ba6421Cb


## NFTs listed:

[Collection](https://testnets.opensea.io/collection/udacity-real-state-v2)

1. https://testnets.opensea.io/assets/0x55cb78200900563f5f33a1c8bfb44615ba6421cb/1

2. https://testnets.opensea.io/assets/0x55cb78200900563f5f33a1c8bfb44615ba6421cb/2

3. https://testnets.opensea.io/assets/0x55cb78200900563f5f33a1c8bfb44615ba6421cb/3

4. https://testnets.opensea.io/assets/0x55cb78200900563f5f33a1c8bfb44615ba6421cb/5
