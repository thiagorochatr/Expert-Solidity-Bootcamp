pragma solidity ^0.8.0;

// define a constant a file level
uint256 constant X = 32**22 + 8;

contract C {

  // For "constant" variables, the value has to be fixed at compile-time
  string constant TEXT = "abc";
  bytes32 constant MY_HASH = keccak256("abc");
  
  // For "immutable" variables, it can still be assigned at construction time.
  uint256 immutable decimals;
  uint256 immutable maxBalance;
  address immutable owner = msg.sender;

  constructor(uint256 _decimals, address _reference) {
    decimals = _decimals;
    // Assignments to immutables can even access the environment.
    maxBalance = _reference.balance;
  }
}