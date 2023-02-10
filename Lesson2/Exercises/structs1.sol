// Any compiler version from the 0.8 release (= 0.8.x)
pragma solidity ^0.8.0;

contract Struct {

  struct Funder {
    address addr;
    uint amount;
  }

  Funder public giver;

  function setGiver(address _addr, uint _amount) public {
    giver.addr = address(_addr);
    giver.amount = _amount;
  }

  function deleteGiver() public {
    delete giver;
  }

}