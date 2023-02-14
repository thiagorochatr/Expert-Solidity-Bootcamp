// Parsing msg.data

pragma solidity 0.7.1;

contract StackTooDeepTest4 {
    function addUints(
        uint256 /*a*/,uint256 /*b*/,uint256 c,uint256 d,uint256 e,uint256 f,uint256 g,uint256 h,uint256 i
    ) external pure returns(uint256) {

        return _fromUint(msg.data)+c+d+e+f+g+h+i;
    }
    
    function _fromUint(bytes memory data) internal pure returns(uint256 value) {
        uint256 value1;
        uint256 value2;

        assembly {
            value1 := mload(add(data, 36))
            value2 := mload(add(data, 68))
            value  := add(value1, value2)
        }
    }
}