const erc721 = artifacts.require("erc721");

module.exports = function (deployer) {
  deployer.deploy(erc721, "NewApe", "APE");
};
