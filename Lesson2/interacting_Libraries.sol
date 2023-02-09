pragma solidity ^0.8.0;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/utils/math/Math.sol";
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/Math.sol';

contract Test {
  using Math for uint256;
    
  function bigger(uint256 _a, uint256 _b) public pure returns(uint256) {

    // The keyword "using" associates a datatype with our library.
    // We can now usa a variable of that datatype with the dot notation (.)
    // to call a library function.
    uint256 big = _a.max(_b);
    return(big);
  }
}