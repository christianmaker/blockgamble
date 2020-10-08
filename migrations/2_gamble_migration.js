const Gamble = artifacts.require("TheGamble")

module.exports = function (deployer) {
	deployer.deploy(Gamble)
}
