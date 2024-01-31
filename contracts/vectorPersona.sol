// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract vectorPersonal { 

    struct Persona {
        uint edad;
        string nombre;
    }

    Persona[] public personas;

    function crearPersona(uint _edad, string memory _nombre) public {
        personas.push(Persona(_edad,_nombre));
    }

    function getPersonas(uint _index) public view returns (uint, string memory) {
        require(_index < personas.length, "Fuera del rango");
        Persona memory persona = personas[_index];
        return (persona.edad, persona.nombre);
    }
}
