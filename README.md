# BlockchainVotingSystem - Voting DApp

A simple decentralized application (DApp) for conducting elections using smart contracts on the Ethereum blockchain. This Voting DApp allows users to create a voting process, cast votes for candidates, and view election results.

## Features
- Add candidates to an election
- Cast votes for candidates
- View the results of the election
- Simple and user-friendly interface

## Prerequisites

To work with this DApp, you'll need:
   - [Node.js](https://nodejs.org/) installed on your machine
   - [Truffle](https://www.trufflesuite.com/truffle) or [Hardhat](https://hardhat.org/) for compiling and deploying the smart contract
   - A code editor (like [Visual Studio Code](https://code.visualstudio.com/))
   - [MetaMask](https://metamask.io/) installed in your browser for interacting with the Ethereum blockchain


## Getting Started

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/voting-dapp.git
   cd voting-dapp
   ```

2. **Install Dependencies**
   ```bash
   npm install
   ```

3. **Compile the Smart Contract**
   Use Truffle or Hardhat to compile the smart contract:
   ```bash
   truffle compile
   ```
   or
   ```bash
   npx hardhat compile
   ```

4. **Deploy the Smart Contract**
   Deploy the contract to a test network (like Rinkeby or Ganache):
   ```bash
   truffle migrate --network rinkeby
   ```
   or
   ```bash
   npx hardhat run scripts/deploy.js --network rinkeby
   ```

5. **Interact with the Contract**
   You can interact with the deployed contract using Truffle Console, Hardhat, or a front-end framework like React or Vue.js. 

## Usage

### Smart Contract Functions

- **addCandidate(string memory _name)**: Allows the owner to add a candidate by providing their name.

- **vote(uint _candidateId)**: Allows users to vote for a candidate using their ID.

- **getCandidate(uint _candidateId)**: Returns the details (ID, name, vote count) of the specified candidate.

- **getResults()**: Returns the name and vote count of the candidate with the highest votes.

### Example Usage

1. Deploy the contract with a specified election name.
2. Call `addCandidate("Candidate Name")` to add candidates.
3. Call `vote(1)` to vote for the first candidate.
4. Use `getResults()` to see which candidate has the most votes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspired by decentralized applications and blockchain technology.
- Thanks to the Solidity community for valuable resources and tutorials.
