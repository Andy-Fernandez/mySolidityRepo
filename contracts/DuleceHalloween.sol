// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  // Corrección: Eliminé los espacios y corregí el símbolo '^'

contract DulceHalloween {
    struct Dulce {
        string nombre;  // Corrección: Cambié los dos puntos (:) por igual (=) para definir las propiedades de la estructura
        string color;   // Corrección: Cambié los dos puntos (:) por igual (=) para definir las propiedades de la estructura
    }
    Dulce[] public dulces;

    mapping(address => Dulce) public bolsa;
    event TrucooTrato(address indexed user, string dulce);  // Corrección: Cambié "string" por "dulce" para representar el nombre del dulce obtenido

    constructor() {
        dulces.push(Dulce("Calabaza", "Naranja"));
        dulces.push(Dulce("Murcielago", "Negro"));
        dulces.push(Dulce("Murcielago", "Negro"));
    }

    function random() private view returns(uint) {  // Corrección: Cambié "unit" por "uint" y corregí "timestap" a "timestamp"
        return uint(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % dulces.length;
    }
    
    function trucooTrato() public {
        uint randomIndex = random();  // Corrección: Asigna el índice aleatorio a una variable
        Dulce memory dulce = dulces[randomIndex];
        bolsa[msg.sender] = dulce;
        emit TrucooTrato(msg.sender, dulce.nombre);  // Corrección: Emitir el evento con el nombre del dulce
    }
}