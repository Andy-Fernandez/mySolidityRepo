// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract cryptoZomC1 {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies; // cuesta GAS

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }

    function _generateRandomDna(string memory _str) private view returns (uint) { // los view no consume gas
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

    function getZombie(uint _index) public view returns (string memory name, uint dna) { // los view no consume gas 
        require(_index < zombies.length, "Indice fuera de rango");
        Zombie memory myZombie = zombies[_index];
        return (myZombie.name, myZombie.dna);
    }
}
