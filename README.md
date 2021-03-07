# SNARKSWAP

can't run in front!

SNARKSWAP is an AMM that doesn't allow front-runnings. Mechanism is simple. Trader can trade on SNARKSWAP while hiding its details using ZkSNARK. Then others should solve the SNARK puzzle(hunting the snark) to see the updated price. Hunting the SNARK takes time and it protects traders from front-runners.

This is not a "privacy" protocol. ZKP is used to add a salt of "uncertainty". Front-runners can assume or guess but they cannot execute their front-running until they figure out the swap is selling or buying.

