// Any compiler version from the 0.8 release (= 0.8.x)
pragma solidity ^0.8.0;

contract Score {

  address owner;

  constructor() {
    owner = msg.sender;
  }

  mapping(address => uint) public score_list;

  uint my_score = score_list[owner];

  uint public score = 5;

  event Score_set(uint indexed);

  modifier onlyOwner {
    if (msg.sender == owner) {
      _; 
    }
  }

  modifier Fee(uint fee) {
    if (msg.value == fee) {
      _;
    }
  }

  // não precisa, pois a variável "score" tem a visibilidade
  // "public", logo a função get() é gerada automaticamente,
  // com o nome "score".
  function getScore() public view returns (uint) {
    return score;
  }

  function setScore(uint new_score) public onlyOwner {
    score = new_score;
    emit Score_set(new_score);
  }

  // não precisa, pois o "score_list" tem a visibilidade
  // "public", logo a função get() é gerada automaticamente,
  // com o nome "score_list".
  function getUserScore(address user) public view returns (uint) {
    return score_list[user];
  }

  function setUserScore(address user, uint _score) public onlyOwner {
    score_list[user] = _score;
  }

  function deleteScore() public {
    delete score;
  }

  function deleteUserScore(address user) public {
    delete (score_list[user]);
  }

}

