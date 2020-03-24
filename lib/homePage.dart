import 'dart:math';

import 'package:flutter/material.dart';
import 'frases.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  final _frases = [
    {'texto': 'E conhecereis a verdade e a verdade vos libertará. Porque Deus amou o mundo'
    'de tal maneira que deu o seu Filho unigênito, para que todo aquele que n\'Ele crê não pereça, '
    'mas tenha a vida eterna.', 'pontuacao': Random().nextInt(1000)},
    {'texto': 'Jesus está voltando!', 'pontuacao': Random().nextInt(1000)},
    {'texto': 'O caminho será fácil com Jesus Cristo!', 'pontuacao': Random().nextInt(1000)},
    {'texto': 'Coronavírus nunca mais!', 'pontuacao': Random().nextInt(1000)},
    {'texto': 'Porque Deus amou o mundo de tal maneira que deu o seu Filho unigênito,'
    'para que todo aquele que n\'Ele crê não pereça, mas tenha a vida eterna.',
    'pontuacao': Random().nextInt(3434)}
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = Random().nextInt(_frases.length); //0-tamanho array
    });
  }

  bool get temFrase {
    return _numeroAleatorio < _frases.length;
  }

  void reset() {
    setState(() {
      _numeroAleatorio = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: temFrase
                ? Frases(
                    frases: _frases[_numeroAleatorio]['texto'],
                    pontos: _frases[_numeroAleatorio]['pontuacao'],
                  )
                : FlatButton(
                    child: Text(
                      "Reset",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    onPressed: reset,
                  ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.share),
              ),
              FlatButton(
                child: Icon(Icons.star_border),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: _incrementCounter,
        tooltip: 'Gira Roleta',
        child: Icon(Icons.add),
      ),
    );
  }
}
