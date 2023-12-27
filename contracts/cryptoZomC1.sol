// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract cryptoZomC1 {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    // Especifica la ubicación de los datos como 'memory' para el parámetro '_name'
    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }

    // Especifica la ubicación de los datos como 'memory' para el parámetro '_str'
    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    // Especifica la ubicación de los datos como 'memory' para el parámetro '_name'
    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}
