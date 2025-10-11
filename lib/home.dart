import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String imagem = "bola_azul",texto_jogador = "Escolha uma opção";
  String jogador = "";
  List<String> jogadas = ["pedra","papel","tesoura"];
  int maquina = -1;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,),
      body: Column(
        children: [
          
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text("Escolha da máquina"),),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Center(
              child: Image.asset("images/${imagem}.png", width: 150, height: 150),)),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(texto_jogador,style: TextStyle(fontSize: 30),)),
          Padding(
            padding: EdgeInsets.only(top: 40),

          child:Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(onPressed: (){
                jogador = "pedra";
                maquina = random.nextInt(3);
                imagem = jogadas[maquina];
                texto_jogador = "O jogador escolheu pedra";
                setState(() {
                  
                });
              }, child: Center(
                child: Image.asset("images/pedra.png", width: 120, height: 120),
                
              ),),
              TextButton(onPressed: (){
                jogador = "papel";
                maquina = random.nextInt(3);
                imagem = jogadas[maquina];
                texto_jogador = "O jogador escolheu papel";
                setState(() {
                  
                });
              }, child: Center(
                child: Image.asset("images/papel.png", width: 120, height: 120),
                
              ),),
              TextButton(onPressed: (){
                jogador = "tesoura";
                maquina = random.nextInt(3);
                imagem = jogadas[maquina];
                texto_jogador = "O jogador escolheu tesoura";
                setState(() {
                  
                });
              }, child: Center(
                child: Image.asset("images/tesoura.png", width: 120, height: 120),
                
              ),),
            ],
          ),
          ) 
          )
        ],
      ),
    );
  }
}

