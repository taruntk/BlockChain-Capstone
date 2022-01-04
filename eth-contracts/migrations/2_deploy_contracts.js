// migrating the appropriate contracts
var SquareVerifier = artifacts.require("./verifier.sol");
var SolnSquareVerifier = artifacts.require("./SolnSquareVerifier.sol");

module.exports = async function(deployer) {
  await deployer.deploy(SquareVerifier);
  await deployer.deploy(SolnSquareVerifier, SquareVerifier.address, "Udacity Real State", "USR");
};
