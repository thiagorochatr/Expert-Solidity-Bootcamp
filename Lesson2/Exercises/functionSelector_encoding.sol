pragma solidity ^0.8.0;

contract MyContract {
  Foo otherContract;
  
  function callOtherContract() public view returns (bool) {
    bool answer = otherContract.baz(69,true);
    return answer;
  }
}

contract Foo {
  function bar(bytes3[2] memory) public pure {}
  function baz(uint32 x, bool y) public pure returns (bool r) { r = x > 32 || y; }
  function sam(bytes memory, bool, uint[] memory) public pure {}
}