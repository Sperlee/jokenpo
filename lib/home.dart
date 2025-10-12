import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String imagem = "bola_azul",texto_jogador = "Escolha uma opção",_texto_maquina = "Escolha da máquina";
  String jogador = "";
  List<String> jogadas = ["pedra","papel","tesoura"];
  Random random = Random();

  void _play (String choice){

    int num_jogada = random.nextInt(3);
    imagem = jogadas[num_jogada];

    if(choice == "pedra" && imagem == "tesoura" || choice == "papel" && imagem == "pedra" || choice == "tesoura" && imagem == "papel" ){
      _texto_maquina = "Jogador venceu";
    }else if(choice == "pedra" && imagem == "papel" || choice == "papel" && imagem == "tesoura" || choice == "tesoura" && imagem == "pedra" ){
      _texto_maquina = "Jogador perdeu";
    }else{
      _texto_maquina = "Empate";
    }

    print("xxx");
    setState(() {
      
    });
  }


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
            child: Text(_texto_maquina,style: TextStyle(fontSize: 30),),),
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
              GestureDetector(
                onTap: () =>  _play("pedra"),
                child: Image.asset("images/pedra.png", width: 120, height: 120),
              ),
              GestureDetector(
                onTap: () =>  _play("papel"),
                child: Image.asset("images/papel.png", width: 120, height: 120),
              ),
              GestureDetector(
                onTap: () =>  _play("tesoura"),
                child: Image.asset("images/tesoura.png", width: 120, height: 120),
              )]
          )))
        ],
      ),
    );
  }
}

