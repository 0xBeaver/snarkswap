submodules:
	git submodule update --init --recursive

all: contracts circuits client

contracts:
	cd snarkswap-contracts && yarn

circuits:
	cd snarkswap-circuits && yarn

client:
	cd snarkswap-client && yarn

test: test-contracts test-circuits test-client

test-contracts:
	cd snarkswap-contracts && yarn hardhat compile && yarn hardhat test

test-circuits:
	cd snarkswap-circuits && yarn test

test-client:
	cd snarkswap-client && yarn test
