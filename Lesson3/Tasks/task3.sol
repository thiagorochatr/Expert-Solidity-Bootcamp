pragma solidity 0.8.17;

contract Task3 {
    
    uint256 s;

    function solution(uint256 a) external {
        uint256[1] memory b;
        b = [a];
        s = b[0];
    }

}