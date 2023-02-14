// Pass structs instead

/*
    OBS: Passing in a tuple or a struct to a functionc -> in Remix
    https://remix-ide.readthedocs.io/en/latest/udapp.html 
*/

pragma solidity 0.7.1;
pragma experimental ABIEncoderV2;

contract StackTooDeepTest3 {
    struct UintPair {
        uint256 value1;
        uint256 value2;
    }
    
    function addUints(
        UintPair memory a, UintPair memory b, UintPair memory c, UintPair memory d, uint256 e
    ) external pure returns(uint256) {
        
        return a.value1+a.value2+b.value1+b.value2+c.value1+c.value2+d.value1+d.value2+e;
    }
}