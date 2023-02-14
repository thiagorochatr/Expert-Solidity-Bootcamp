pragma solidity ^0.8.0;

contract Task3 {
  uint256[] public storedData;

  function setData(uint256[] memory _data) public {
    storedData = _data;

    //creating a new instance
    uint256[] memory myArray = storedData;
    
    // Adding value to the first index of the array myArray
    myArray[0] = 0;
  }

  function getData() public view returns (uint256[] memory) {
    return storedData;
  }
}