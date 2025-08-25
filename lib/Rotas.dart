import 'package:flutter/material.dart';
import 'package:whatsapp/telas/Cadastro.dart';
import 'package:whatsapp/telas/Home.dart';

class Rotas {
  static Route<dynamic> gerarRotas(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Home());
      case "/cadastro":
        return MaterialPageRoute(builder: (_) => Cadastro());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: Text("Tela não encontrada")),
            body: Center(child: Text("Rota ${settings.name} não encontrada!")),
          ),
        );
    }
  }
}
