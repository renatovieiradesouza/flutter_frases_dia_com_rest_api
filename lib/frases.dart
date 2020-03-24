import 'package:flutter/material.dart';

class Frases extends StatelessWidget {
  final frases;
  int pontos = 0;

  Frases({this.frases, this.pontos});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Frase sorteada',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '$frases',
                style: TextStyle(fontSize: 20, color: Colors.black38),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 10,),
            Text("Pontos", style: TextStyle(fontSize: 30, color: Colors.black),),
            SizedBox(height: 10,),
            Text('$pontos', style: TextStyle(fontSize: 20, color: Colors.black38),),
          ],
        );
  }
}