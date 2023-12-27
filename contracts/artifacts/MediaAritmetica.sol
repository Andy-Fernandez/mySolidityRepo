// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
contract MediaAritmetica {
    // Variables de estado
    uint256 public x1;
    uint256 public x2;
    uint256 public x3;

    // Constructor
    constructor(uint256 _x1, uint256 _x2, uint256 _x3) {
        x1 = _x1;
        x2 = _x2;
        x3 = _x3;
    }

    // Metodos
    function calcularMedia() public view returns (uint256){
        return (x1 + x2 + x3)/3;
    }
}

