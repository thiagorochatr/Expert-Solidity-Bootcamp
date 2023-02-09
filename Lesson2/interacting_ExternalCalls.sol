pragma solidity ^0.8.0;

contract InfoFeed {
  uint256 price;

  function info() public view returns (uint256 ret_) {
    return price;
  }
  // other functions
}

contract Consumer {
  InfoFeed feed;

  constructor(InfoFeed _feed) {
    feed = _feed;
  }
    
  function callFeed() public view returns (uint256) {
    return feed.info();
  }
}