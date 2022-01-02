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

## Deployment

```
   Deploying 'Verifier'
   --------------------
   > transaction hash:    0xe7b23314116a2671283ed45eaddcc37608d48c2d9a18ef8a847eb2f8556e5d62
   > Blocks: 2            Seconds: 9
   > contract address:    0x7831F6Ff824C4ba545DD646c371c8afCd9b56504
   > block number:        11737354
   > block timestamp:     1641124180
   > account:             0xB214b60bA38Eea5BfEcbCBd9FB308613228F4250
   > balance:             4.950333507254075187
   > gas used:            1011854 (0xf708e)
   > gas price:           1.500000007 gwei
   > value sent:          0 ETH
   > total cost:          0.001517781007082978 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 11737356)

   Deploying 'SolnSquareVerifier'
   ------------------------------
   > transaction hash:    0xb45e5866a8322e6ea15c1d058c03a2b943a288cc00bee77f8a549886d5330c2a
   > Blocks: 1            Seconds: 45
   > contract address:    0x944b2bf05D943A8198AB5c634BFF83beaa0Fc8B2
   > block number:        11737359
   > block timestamp:     1641124228
   > account:             0xB214b60bA38Eea5BfEcbCBd9FB308613228F4250
   > balance:             4.944782482728170406
   > gas used:            3700683 (0x3877cb)
   > gas price:           1.500000007 gwei
   > value sent:          0 ETH
   > total cost:          0.005551024525904781 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 11737360)
   > confirmation number: 2 (block: 11737361)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.007068805532987759 ETH


```

## Transaction hash

0xb45e5866a8322e6ea15c1d058c03a2b943a288cc00bee77f8a549886d5330c2a


## NFT listed:
https://testnets.opensea.io/assets/0x88b48f654c30e99bc2e4a1559b4dcf1ad93fa656/94141607288999483371115420662520482382201203830095635710889497616243746668545