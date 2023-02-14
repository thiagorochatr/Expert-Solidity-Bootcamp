// Use an internal function

pragma solidity 0.7.1;

contract StackTooDeepTest1 {
    function addUints(
        uint256 a,uint256 b,uint256 c,uint256 d,uint256 e,uint256 f,uint256 g,uint256 h,uint256 i
    ) external pure returns(uint256) {
        return _addThreeUints(a,b,c) + _addThreeUints(d,e,f) + _addThreeUints(g,h,i);
    }
    
    function _addThreeUints(uint256 a, uint256 b, uint256 c) private pure returns(uint256) {
        return a+b+c;
    }
}