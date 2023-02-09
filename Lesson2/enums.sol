// Any compiler version from the 0.8 release (= 0.8.x)
pragma solidity ^0.8.0;

contract EnumType {

  enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }

  ActionChoices choice;
  ActionChoices constant defaultChoice = ActionChoices.GoRight;

  function setGoStraight() public {
    choice = ActionChoices.GoStraight;
  }

  // Since enum types are not part of the ABI, the signature of "getChoice"
  // will automatically be changed to "getChoice() returns (uint8)"
  // for all matters external to Solidity.
  function getChoice() public view returns (ActionChoices) {
    return choice;
  }

  function getDefaultChoice() public pure returns (uint) {
    return uint(defaultChoice);
  }

  function getLargestValue() public pure returns (ActionChoices) {
    return type(ActionChoices).max;
  }

  function getSmallestValue() public pure returns (ActionChoices) {
    return type(ActionChoices).min;
  }
    
}