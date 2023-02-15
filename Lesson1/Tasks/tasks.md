# 1

1. Why is client diversity important for Ethereum?

  Client diversity helps to ensure the security and decentralization of the network, making the network more resilient to attacks and bugs. By having multiple clients, Ethereum can also maintain its integrity and remain open and transparent, even if one implementation has a bug or issue. (Shared responsibility for development)

  https://ethereum.org/en/developers/docs/nodes-and-clients/client-diversity/

2. What information is held for an Ethereum account?

  The nonce, balance, storageRoot & codeHash.

  There are two types of account:
  - Externally-owned account (EOA): controlled by anyone with the private keys.
  - Contract account: a smart contract deployed to the network, controlled by code. The contract code is stored in the account. The storage of the smart contract, which holds any data or variables stored by the contract.
  
  Both account types have the ability to:
  - Receive, hold and send ETH and tokens.
  - Interact with deployed smart contracts.

  The information is stored on the Ethereum blockchain and is publicly accessible.

  https://ethereum.org/en/developers/docs/accounts/

3. Where is the full Ethereum state held?

  The full Ethereum state is held on every node in the Ethereum network. Each node maintains a copy of the blockchain and the state database, which holds the current state of the Ethereum network, including all smart contract code, storage, and account balances.

4. What is a replay attack? Which 2 pieces of information can prevent it?

  A replay attack is a valid data transmission that is maliciously or fraudulently repeated or delayed. It's like
  taking a transaction on one blockchain, and maliciously or fraudulently repeating it on another chain.

  To prevent these types of attacks, two pieces of information are used:

  - ChainID: This is a unique identifier for each Ethereum chain. By including the ChainID in each transaction, nodes can distinguish between transactions intended for different chains.

  - Nonce: This is a unique number assigned to each transaction. By including the nonce in each transaction, nodes can ensure that each transaction is executed only once.

5. In a contract, how do we know who called a view function?

  View functions are "read-only", so don't modify the state of the blockchain and are not recorded in transactions.

  View functions have access to the message sender's address:

  ```
    function getSenderAddress() view public returns (address) {
        return msg.sender;
    }
  ```

  We can't be sure so be carefully using msg.sender in view functions. If called in transaction, it cannot be faked: you must have the private key associated with the given account. But in a call, you are free to set the sender to any value you like.