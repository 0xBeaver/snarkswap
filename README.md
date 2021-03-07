# Snarkswap -  *Can't run in front!*


SNARKSWAP is an AMM that doesn't allow front-runnings. Mechanism is simple. Trader can trade on SNARKSWAP while hiding its details using ZkSNARK. Then others should solve the SNARK puzzle(hunting the snark) to see the updated price. Hunting the SNARK takes time and it protects traders from front-runners.

This is not a "privacy" protocol. ZKP is used to add a salt of "uncertainty". Front-runners can assume or guess but they cannot execute their front-running until they figure out the swap is selling or buying.

# Commands

1. Update submodules

```
make submodules
```

2. Build projects

```
make all
```

3. Run all tests
```
make test
```

# Development

1. Use 'Open Workspace' menu and open **snarkswap.code-workspace** file in VS Code.

2. Make some changes in **circuits**, **contracts** or **client** module.

    1. circuits:
        * Go to the circuit directory using `cd snarkswap-circuits` from the root directory. Or open a new terminal using VS code's Ctrl+Shift+` option and select 'circuits'.
        * `yarn compile`: This compiles SNARK circuits.
        * `yarn sample-phase-1`: This will run the phase-1 trusted setup for your testing. You need to run this only once.
        * `yarn sample-phase-2`: This will run a phase-2 trusted setup for your testing.
        * `yarn gen-vk`: After the sample phase 2 is been setup, this command generates verification key.
        * `yarn setup`: This executes above four commands.
        * `yarn test`: This runs the test.
        * `yarn gen-contracts`: This will generate sample verifier solidity files.
    1. contracts:
        * Go to the contracts directory using `cd snarkswap-contracts` from the root directory. Or open a new terminal using VS code's Ctrl+Shift+` option and select 'contracts'.
        * `yarn hardhat compile`: This compiles the contracts.
        * `yarn hardhat test`: This runs test cases using hardhat.
    1. client:
        * Go to the client directory using `cd snarkswap-client` from the root directory. Or open a new terminal using VS code's Ctrl+Shift+` option and select 'client'.
        * `yarn build`: This builds the module.
        * `yarn test`: This builds the module and run all test cases.

3. Commit changes for each module.

4. Push your commit to your remote repo and make a PR for the modules.

# License

Mostly under the GPL v3 and some codes are under the MIT license.