import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    home:Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //atributos
  List _frases = [
    'A persistência é o caminho do êxito.',
    'Oi sou um app Flutter ;Vocês recrutadores,empresas de tecnologia,startups dá uma chance para rapaz !!!... ',
    'Só existe um êxito: a capacidade de levar a vida que se quer.',
    'A vitalidade é demonstrada não apenas pela persistência, mas pela capacidade de começar de novo.',
    'A coragem não é ausência do medo; é a persistência apesar do medo.',
    'O homem não teria alcançado o possível se, repetidas vezes, não tivesse tentado o impossível.',
    'Força de ânimo e coragem na adversidade servem para conquistar o êxito, mais do que um exército.',
    'Creia em si, mas não duvide sempre dos outros.',
    'Dois homens não podem passar meia hora juntos sem que um conquiste uma evidente superioridade em relação ao outro.',
    'Estar decidido, acima de qualquer coisa, é o segredo do êxito.',
    'Para obter êxito no mundo temos de parecer loucos mas sermos espertos.'
    ];
    
    String  _frazeGerada =  "Cliqui no botão para uma nova frase !...";
    
    //metudo
    void _gerarFrase(){
      int indiceCap = Random().nextInt(_frases.length);
      setState(() {
        _frazeGerada = _frases[indiceCap];
      });
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("App Motiva",
            style:TextStyle(
               color: Colors.white,
               fontStyle: FontStyle.italic,
            ) ,
        ),
        backgroundColor: Colors.green[300],
      ),
      backgroundColor: Colors.green[300],
      body: Center(
        child:Container(
          padding: EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             /* Image.asset("img/florer.jpg",
                fit: BoxFit.fitWidth,
              ),*/
              Text(
               _frazeGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text("  Gerar Frase  ",
                  style: TextStyle(
                      fontSize: 28,
                      color:Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
                color:Colors.orange[300],
                
                onPressed: _gerarFrase,
              )
            ],
            ),
        ),
      ),
    );
  }
}