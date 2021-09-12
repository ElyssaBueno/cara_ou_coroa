import 'dart:math';

import 'moeda.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  void _exibirResultado(){
    var itens = ["cara","coroa"];
    var num = Random().nextInt(itens.length);
    var resultado = itens[num];

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Moeda(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Image.asset("logo.png"),
              ) ,
            GestureDetector(
              onTap: () => _exibirResultado() ,
              child: Image.asset("botao_jogar.png"),
            )
            
          ],
        ),
      ),
    );
  }
}