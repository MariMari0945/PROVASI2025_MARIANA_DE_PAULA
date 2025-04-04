Nesta atividade, os alunos deverão desenvolver um smart contract em Solidity para a implementação do jogo Jokenpô, seguindo as boas práticas de desenvolvimento e controle de versão para a construção de um jogo com regras transparentes e facilmente verificáveis.

O Jokenpô segue a dinâmica tradicional:

- Pedra vence Tesoura.

- Tesoura vence Papel.

- Papel vence Pedra.

Os alunos devem garantir que o contrato permita o jogo de forma segura e justa, evitando manipulações ou estados inconsistentes.

Para cumprir esta atividade, você deve:

(até 2,0 pontos) 1 - Utilizar GitHub para versionamento, com branches e pull requests. Você deve seguir boas práticas de desenvolvimento e controle de versão.

(até 2,0 pontos) 2 - Definir e documentar as regras de negócio no arquivo Markdown.

(até 2,0 pontos) 3 - Seu código deve definir e armazenar as jogadas dos jogadores no contrato. Deve existir um mecanismo para que as jogadas passadas sejam registradas no contrato, garantindo integridade dos dados. Estas jogadas devem ser consultadas quando necessário.

(até 2,0 pontos) 4 – Seu código deve contemplar uma forma de comparar as jogadas e determinar um vencedor, considerando inclusive a possibilidade de empate e nova rodada.

(até 2,0 pontos) 5 – Seu código deve assegurar que apenas participantes legítimos possam jogar. Você também deve aplicar regras de controle de acesso para que somente o dono do contrato possa modificar dados críticos no contrato.

O contrato deve ser compilado e implantado no Remix IDE.

Testes manuais devem ser realizados no Remix IDE após a implantação do contrato, e estes resultados devem ser registrados com capturas de tela para mostrar o correto cumprimento de cada tarefa.