# Processador Multiciclo MyRISC

Este é o repositório do projeto de desenvolvimento de um processador multiciclo chamado **MyRISC**, criado como parte da disciplina de Organização e Arquitetura de Computadores 2 (OAC 2) na **Universidade Federal do Vale do São Francisco (UNIVASF)**. O projeto foi desenvolvido com a orientação e auxílio do professor da disciplina: **Max Santana Rolemberg Farias**.

## Sobre o Projeto

O processador MyRISC foi projetado para ser simples e funcional, implementando um conjunto reduzido de instruções em arquitetura RISC. A implementação foi realizada em **VHDL**, e o projeto pode ser facilmente compilado e simulado na plataforma **EDA Playground**.

## Como Executar

Para compilar e simular o projeto, siga estas etapas:

1. Acesse o site [EDA Playground](https://edaplayground.com/home).
2. Baixe os arquivos do processador multiciclo MyRISC disponíveis neste repositório.
3. No adaPlayground, faça o upload dos arquivos `.vhd` listados abaixo.
4. Configure os sinais de entrada e saída para simulação.
5. Execute a simulação utilizando o arquivo `BEQtest.out` e observe os resultados.

### Estrutura do Projeto

O projeto inclui os seguintes arquivos principais:

#### Arquivos de Componentes do Processador
- **`design.vhd`**: Descrição principal do processador multiciclo.
- **`control.vhd`**: Unidade de controle multiciclo.
- **`rreg32.vhd`**: Registro de 32 bits.
- **`rom.vhd`**: Memória somente leitura (ROM).
- **`ram.vhd`**: Memória RAM.
- **`registers.vhd`**: Banco de registradores.
- **`alucontrol.vhd`**: Controle da ALU.
- **`alu.vhd`**: Unidade Lógica e Aritmética (ALU).
- **`memoryAccess.vhd`**: Unidade de acesso à memória.
- **`mux232.vhd`**: Multiplexador com 2 entradas.
- **`mux332.vhd`**: Multiplexador com 3 entradas.
- **`mux25.vhd`**: Multiplexador adicional.
- **`mux432.vhd`**: Multiplexador com 4 entradas.
- **`fetch.vhd`**: Unidade de busca de instruções.
- **`decoder.vhd`**: Unidade de decodificação.
- **`execute.vhd`**: Unidade de execução.
- **`ir.vhd`**: Registrador de instruções.
- **`reg2.vhd`**: Registrador adicional.

#### Exemplos e Testes
- **`BEQtest.out`**: Arquivo de teste principal para simulação.
- **`exemplo1_sala.out`**: Arquivo de teste adicional para validação.

## Simplicidade do Tutorial

O processo é simples:
- Faça o upload dos arquivos em um compilador VHDL como o EDA Playground.
- Configure as entradas e selecione os exemplos para testes.
- Rode a simulação e analise os resultados.

## Datapath do processador MyRISC - Multiciclo
![image](https://github.com/user-attachments/assets/846af143-fce6-4241-8555-e65115661f23)

## Máquina de estados finita
A imagem abaixo representa aos estados possiveis no processador multiciclo - MyRISC
![image](https://github.com/user-attachments/assets/2267bafb-057f-4098-ae3c-37905f93d849)

## Simulação

A simulação abaixo foi feito com o arquivo "BEQtest.out" na plataforma EDA Playground e ele representa o WaveForm do teste do BEQ no processador Monociclo - MyRISC
![image](https://github.com/user-attachments/assets/1cb0a84d-be52-4037-82fe-c40ac09eab0e)

## Licença
Este projeto está sob a licença MIT. Consulte o arquivo `LICENSE` para mais informações.

## Contribuições

O projeto foi desenvolvido com o suporte do professor Max Santana Rolemberg Farias e em colaboração com os alunos da disciplina. Sugestões de melhorias e extensões são bem-vindas!

Desenvolvido com dedicação pela turma de OAC 2 da UNIVASF.
