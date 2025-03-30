import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  final List<String> _opcoes = ["papel", "pedra", "tesoura"];
  String _imagemEscolhaApp = "images/padrao.png";
  String _mensagem = "Escolha uma opção abaixo:";

  void _jogar(String escolhaUsuario) {
    int indiceApp = Random().nextInt(3);
    String escolhaApp = _opcoes[indiceApp];

    setState(() {
      _imagemEscolhaApp = "images/$escolhaApp.png";

      if ((escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
          (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
          (escolhaUsuario == "papel" && escolhaApp == "pedra")) {
        _mensagem = "Você venceu!";
      } else if (escolhaUsuario == escolhaApp) {
        _mensagem = "Empate!";
      } else {
        _mensagem = "Você perdeu!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('JokenPO'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(_imagemEscolhaApp, height: 120),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _jogar("papel"),
                child: Image.asset('images/papel.png', height: 100),
              ),
              GestureDetector(
                onTap: () => _jogar("pedra"),
                child: Image.asset('images/pedra.png', height: 100),
              ),
              GestureDetector(
                onTap: () => _jogar("tesoura"),
                child: Image.asset('images/tesoura.png', height: 100),
              ),
            ],
          )
        ],
      ),
    );
  }
}
