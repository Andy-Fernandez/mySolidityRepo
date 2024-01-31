// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculadora {
    uint256 private a;
    uint256 private b;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }

    function set(uint256 _a, uint256 _b) public {
        a = _a;
        b = _b;
    }

    function sumar() public view returns (uint256) {
        return a + b;
    }

    function restar() public view returns (int256) {
        return a - b;
    }

    function multiplicar() public view returns (uint256) {
        return a * b;
    }

    function dividir() public view returns (uint256) {
        require(b > 0, "Division por cero");
        return a / b;
    }
}
