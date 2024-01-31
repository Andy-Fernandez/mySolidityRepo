pragma solidity ^0.4.25;

import "./ZombieFactory.sol";

contract ZombieFeeding is ZombieFactory {

  function feedAndMultiply(uint _zombieId, uint _targetDna) public {
    require(msg.sender == zombieToOwner[_zombieId]);
    Zombie storage myZombie = zombies[_zombieId];
    _targetDna = _targetDna % dnaModulus; // necesitamos tener 16 digitos entonces le hacemos un mod
    uint newDna = (myZombie.dna + _targetDna) / 2; // usamos el dna del zombie original
    _createZombie( "NoName", newDna); // creamos un zombie
  }

}