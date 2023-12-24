// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loteria {
    address public owner;
    address[] public participantes;
    bool public loteriaCerrada;
    address public ganador;

    event GanadorElegido(address indexed ganador);

    modifier soloPropietario() {
        require(msg.sender == owner); // 'Solo el propietario puede ejecutar esta operación'
        _;
    }

    modifier loteriaAbierta() {
        require(!loteriaCerrada); // "La lotería ya está cerrada"
        _;
    }

    constructor() {
        owner = msg.sender;
        loteriaCerrada = false;
    }

    function comprarBoleto() external payable loteriaAbierta {
        require(msg.value > 0.1 ether); // "El boleto debe costar al menos 0.1 ether"
        participantes.push(msg.sender);
    }

    function cerrarLoteria() external soloPropietario loteriaAbierta {
        require(participantes.length > 0); // "No hay participantes para elegir como ganador"
        uint indiceGanador = generarNumeroAleatorio() % participantes.length;
        ganador = participantes[indiceGanador];
        loteriaCerrada = true;
        emit GanadorElegido(ganador);
    }

    function generarNumeroAleatorio() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participantes)));
    }

    function retirarPremio() external soloPropietario {
        require(loteriaCerrada);  //  "La lotería aún no ha sido cerrada"
        payable(owner).transfer(address(this).balance);
    }
}
