submodules:
	git submodule update --init --recursive

clean:
	rm -rf ./snarkswap-*/node_modules && yarn cache clean

all: client contracts circuits

contracts:
	cd snarkswap-contracts && yarn

circuits:
	cd snarkswap-circuits && yarn

client:
	cd snarkswap-client && yarn && yarn build

test: test-contracts test-circuits test-client

test-contracts:
	cd snarkswap-contracts && yarn hardhat compile && yarn hardhat test

test-circuits:
	cd snarkswap-circuits && yarn test

test-client:
	cd snarkswap-client && yarn test:unit
