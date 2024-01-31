// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MultiploCinco {
    uint256[] public multiplos;

    constructor() {
        calcularMultiplos(10); 
    }

    function calcularMultiplos(uint cantidad) public {
        delete multiplos;
        for (uint i = 1; i <= cantidad; i++) {
            multiplos.push(i * 5);
        }
    }

    function getMultiplo(uint index) public view returns (uint256) {
        require(index < multiplos.length, "Indice fuera de rango");
        return multiplos[index];
    }
}
