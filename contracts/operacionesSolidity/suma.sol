// SPDX-License-Identifier: MIT  //Licencia del complidor
pragma solidity >=0.7.0 <0.9.0;  //Versión de compliador 

contract Suma {
    function sumar(int numero1, int numero2) public pure returns (int){
        return numero1 + numero2;
    }
}