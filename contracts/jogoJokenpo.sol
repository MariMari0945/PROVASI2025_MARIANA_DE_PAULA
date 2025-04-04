// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract JogoDoJokempo {
    enum Simbolo { Pedra, Papel, Tesoura }

    mapping(uint256 => address) public jogador;
    mapping(uint256 => Simbolo) public simboloejogado;
    address public owner;

    uint256 public maxJogada = 10;
    uint256 public jogadacorrente;

    modifier onlyOwner() { 
        require(msg.sender == owner, "Apenas o dono pode modificar");
        _;
    }
    constructor() { 
        owner = msg.sender;
    }

    function registrarJogo(address _jogador, Simbolo simbolejo) public {
        require(jogadacorrente < maxJogada, "Numero maximo de jogadas atingido");
        
        jogador[jogadacorrente] = _jogador;
        simboloejogado[jogadacorrente] = simbolejo;
        jogadacorrente++;
    }

    function verificarJogada(uint256 index1, uint256 index2) public view returns (string memory) {
        require(index1 < jogadacorrente && index2 < jogadacorrente, "Indices de jogada invalidos");
        
        Simbolo simbolo1 = simboloejogado[index1];
        Simbolo simbolo2 = simboloejogado[index2];

        if(simbolo1 == simbolo2) {
            return "Empate";
        }

        if ((simbolo1 == Simbolo.Pedra && simbolo2 == Simbolo.Tesoura) ||
            (simbolo1 == Simbolo.Papel && simbolo2 == Simbolo.Pedra) ||
            (simbolo1 == Simbolo.Tesoura && simbolo2 == Simbolo.Papel)) {
            return "Jogador 1 Ganhou!";
        } else {
            return "Jogador 2 Ganhou!";
        }
    }
}