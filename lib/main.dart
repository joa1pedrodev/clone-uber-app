import 'package:flutter/material.dart';
import 'package:whatsapp/Rotas.dart';
import 'package:whatsapp/telas/Home.dart';

final ThemeData temaPadrao = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blueGrey,
  ).copyWith(secondary: Color(0xff546e7a)),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xff37474f), // Cor de fundo do AppBar
    foregroundColor: Colors.white, // Cor dos ícones e textos
    elevation: 4, // Sombra do AppBar
  ),
);

void main() {
  runApp(MaterialApp(
    home: Home(), 
    theme: temaPadrao,
    initialRoute: "/",
    onGenerateRoute: Rotas.gerarRotas,
    debugShowCheckedModeBanner: false,
    ));
}
