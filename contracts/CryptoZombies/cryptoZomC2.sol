// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract cryptoZomC2{

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;
    mapping (address => bool) public zombieOwners;

    event NewZombie(uint zombieId, string name, uint dna);

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
        uint id = zombies.length - 1;
        emit NewZombie(id, _name, _dna);
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        require(!zombieOwners[msg.sender], "Cada direccion solo puede crear un zombi");
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
        zombieOwners[msg.sender] = true;
    }

    function getZombie(uint _index) public view returns (string memory name, uint dna) {
        require(_index < zombies.length, "Indice fuera de rango");
        Zombie memory myZombie = zombies[_index];
        return (myZombie.name, myZombie.dna);
    }
}
