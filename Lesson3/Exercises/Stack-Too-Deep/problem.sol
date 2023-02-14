/*
    https://soliditydeveloper.com/stacktoodeep

    ERROR: InternalCompilerError: Stack too deep, try removing local variables.

    Let's look at the following code. It will throw our beloved "stack too deep" error message.

    What can we do about it?
*/

pragma solidity 0.7.1;

contract StackTooDeepTest1 {
    function addUints(
        uint256 a,uint256 b,uint256 c,uint256 d,uint256 e,uint256 f,uint256 g,uint256 h,uint256 i
    ) external pure returns(uint256) {
        return a+b+c+d+e+f+g+h+i;
    }
}