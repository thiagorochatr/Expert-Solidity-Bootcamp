// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Owned {
  constructor() {
    owner = msg.sender;
  }
  address  owner;
}

  // Use `is` to derive from another contract. Derived
  // contracts can access all non-private members including
  // internal functions and state variables. These cannot be
  // accessed externally via `this`, though.

contract Child1 is Owned {
  // The keyword `virtual` means that the function can change
  // its behaviour in derived classes ("overriding").
  
  function doThings() virtual public {
    // ... ;
  }
}