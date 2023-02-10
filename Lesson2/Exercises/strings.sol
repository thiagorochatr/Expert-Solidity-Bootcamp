// Any compiler version from the 0.8 release (= 0.8.x)
pragma solidity ^0.8.0;

contract Strings {

  string public s1;
  string public s2;

  function set1string(string memory new_string) public {
    s1 = new_string;
  }

  function set2string(string memory new_string) public {
    s2 = new_string;
  }

  function compareStrings() public view returns (bool) {
    return keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2));
  }

  function concStrings() public view returns (string memory) {
    return string.concat(s1, s2);
  }

  function concatBytes(string memory a, string memory b) public pure returns (string memory) {
    return string(bytes.concat(bytes(a), " ", bytes(b)));
  }
    
}