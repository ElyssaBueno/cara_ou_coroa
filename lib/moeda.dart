import 'package:flutter/material.dart';

class Moeda extends StatefulWidget {
  

  String resultado;
  Moeda(this.resultado);


  @override
  _MoedaState createState() => _MoedaState();
}
class _MoedaState extends State<Moeda> {

  String imagem = "";
  @override
  Widget build(BuildContext context) {
    if(widget.resultado == "cara"){
      imagem = "moeda_cara.png";
    }
    else{
      imagem = "moeda_coroa.png";
    }
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
              child: Image.asset(imagem),
              ) ,
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("botao_voltar.png"),
            )
            
          ],
        ),
      ),
    );
  }
}