pragma solidity ^0.4.4;

contract Adoption {
  address[16] public adopters;

  // Adopting a pet
  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;
  }

  // Abandoning a pet
  function abandon(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = 0x0000000000000000000000000000000000000000;

    return petId;
  }

  // Retrieving the adopters
  function getAdopters() public returns (address[16]) {
    return adopters;
  }
}