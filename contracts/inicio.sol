// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Inicio {
    ///  Storage (memoria permamente)
    ///  Variables de Storage (storage varibles)

    // integer
    // uint: unsigned integer == entero sin signo
    // 256: utiliza 256 bits (0s y 1s) para expresar una cantidad
    // uint256: [0, 2^256 - 1]
    // uint256 tiene un valor por defecto de 0 (fue definido por Solidity)
    uint256 edad;

    // int256: [- 2^256, 2^256 - 1]
    int256 enteroConSigno = -1231; 

    // En solidity no existe el punto flotante
    // No existen los decimales en solidity
    // La División de número es una división de enteros
    // 3 / 5 = 0
    // 5 / 3 = 1

    // SETTER
    // Guarda una información
    // Escribe (write)
    // - Todos los parámetros deben ser tipados
    // - Los métodos deben especificar una visibilidad (acceso de un usuario externo)
    // - Tipos de visibilidad: public, internal, private, external
    //          - public: que un usuario externo puede llamar al método
    //          - internal,private: no se expone este metodo a un usuario externo
    function cambiarEdad(uint256 nuevaEdad) public {
        edad = nuevaEdad;
    }

    // GETTER
    // Lee información
    // Lee (read)
    // Todos los métodos de lectura lleva la palabra 'view'
    function leerEdad() public view returns(uint256) {
        return edad;
    }
}