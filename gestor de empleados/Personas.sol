// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Personas {
    struct Persona {
        uint edad;
        string nombre;
    }

    Persona[] public personas;

    function agregarPersona(uint _edad, string memory _nombre) public {
        Persona memory nuevaPersona = Persona(_edad, _nombre);
        personas.push(nuevaPersona);
    }

    function getPersona(uint index) public view returns (uint, string memory) {
        Persona memory person = personas[index];
        return (person.edad, person.nombre);
    }

    function getPersonasLength() public view returns (uint) {
        return personas.length;
    }
}

contract Empleado is Personas {
    struct EmpleadoInfo {
        Persona persona;
        uint salario;
    }

    EmpleadoInfo[] public empleadosInfo;

    function agregarEmpleado(uint _edad, string memory _nombre, uint _salario) public {
        Persona memory nuevaPersona = Persona(_edad, _nombre);
        EmpleadoInfo memory nuevoEmpleadoInfo = EmpleadoInfo(nuevaPersona, _salario);
        empleadosInfo.push(nuevoEmpleadoInfo);
    }

    function cambiarSalario(uint index, uint nuevoSalario) public {
        empleadosInfo[index].salario = nuevoSalario;
    }

    function getEmpleado(uint index) public view returns (uint, string memory, uint) {
        EmpleadoInfo memory empl = empleadosInfo[index];
        return (empl.persona.edad, empl.persona.nombre, empl.salario);
    }

    function getEmpleadosLength() public view returns (uint) {
        return empleadosInfo.length;
    }
}
