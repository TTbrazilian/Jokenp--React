
# Aplicativo JokenPo

Este é um aplicativo simples do jogo **JokenPo** (Pedra, Papel, Tesoura), desenvolvido utilizando o framework Flutter. O usuário pode jogar contra o computador, que faz uma escolha aleatória. O resultado da partida é exibido diretamente na interface do aplicativo.

## Funcionalidades

- O usuário pode selecionar **Pedra**, **Papel** ou **Tesoura**.
- O aplicativo realiza uma escolha aleatória para o computador.
- O resultado da partida é mostrado em uma mensagem informando se o usuário ganhou, perdeu ou empatou.
- São exibidas imagens representando as escolhas do usuário e do computador.

## Como Jogar

1. Ao abrir o aplicativo, será apresentada a mensagem "Escolha uma opção abaixo".
2. O usuário deve selecionar **Pedra**, **Papel** ou **Tesoura**, tocando na imagem correspondente.
3. O aplicativo mostrará a escolha do computador e informará o resultado da partida.

## Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento de aplicativos móveis.
- **Dart**: Linguagem de programação utilizada no Flutter.
- **Random**: Biblioteca para gerar a escolha aleatória do computador.

## Estrutura do Código

O código do aplicativo é baseado em um **StatefulWidget** chamado `Jogo`, que gerencia e atualiza as escolhas do usuário e do computador conforme as interações ocorrem.

### Principais funções:

- **_jogar(String escolhaUsuario)**: Recebe a opção escolhida pelo usuário, gera a escolha aleatória do computador, compara os resultados e exibe a mensagem correspondente.
- **build()**: Constrói a interface gráfica, exibindo as imagens e o resultado da partida.

## Como Executar

1. **Instalar o Flutter**:
   Siga as instruções do guia oficial para instalar o Flutter no seu ambiente: [Flutter Installation](https://flutter.dev/docs/get-started/install).

2. **Clonar o Repositório**:
   Clone o repositório para o seu computador:
   ```sh
   git clone https://github.com/TTbrazilian/app-jokenpo.git
   ```

3. **Instalar Dependências**:
   Acesse o diretório do projeto e instale as dependências:
   ```sh
   cd app-jokenpo
   flutter pub get
   ```

4. **Executar o Aplicativo**:
   Conecte um dispositivo físico ou inicie um emulador e execute:
   ```sh
   flutter run
   ```

## Imagens

 ![Imagem1](https://github.com/user-attachments/assets/7139d4ba-b462-4f25-84f5-77c8278c9c98)


Vídeo do Modelo do APP:
https://github.com/user-attachments/assets/363880ef-38e0-451f-b0bc-1de701cf947c
