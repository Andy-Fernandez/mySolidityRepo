// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SistemaVotacion {
    uint256 public votosCandidato1;
    uint256 public votosCandidato2;
    uint256 public totalVotos;

    event VotoEmitido(uint256 candidato, address votante);

    function votar(uint256 candidato) public {
        require(candidato == 1 || candidato == 2, "Candidato invalido");

        if (candidato == 1) {
            votosCandidato1++;
        } else if (candidato == 2) {
            votosCandidato2++;
        }

        totalVotos++;
        emit VotoEmitido(candidato, msg.sender);
    }

    function porcentajeVotosCandidato1() public view returns (uint256) {
        require(totalVotos > 0, "Aun no hay votos");
        return (votosCandidato1 * 100) / totalVotos;
    }

    function porcentajeVotosCandidato2() public view returns (uint256) {
        require(totalVotos > 0, "Aun no hay votos");
        return (votosCandidato2 * 100) / totalVotos;
    }
}
