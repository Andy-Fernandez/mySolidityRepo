// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GeneradorNumerosPares {
    // Variable para almacenar el último número par generado
    uint256 public numeroActual;

    // Constructor que inicia el contrato con el primer número par
    constructor() {
        // Iniciamos con 0 que es el primer número par
        numeroActual = 0;
    }

    // Función para obtener el siguiente número par
    function siguienteNumeroPar() public view returns (uint256) {
        return numeroActual + 2;
    }

    // Función para actualizar el número actual al siguiente número par
    function generarSiguienteNumeroPar() public {
        numeroActual = siguienteNumeroPar();
    }
}