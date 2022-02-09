

import 'package:crosscircle/single.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var diaounoite = Colors.white;

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      appBar: AppBar(
        title: Text("Jogos para passar o tempo!"),
        backgroundColor: diaounoite,
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () => CrossCircle(), child: Text("Jogo da Trinca")),
          TextButton(
              onPressed: () => CrossCircle(), child: Text("Jogo das Sobras")),
          Switch(
              value: true,
              onChanged: (bool newValue) {
                setState(() {
                  diaounoite = Colors.blueGrey.shade800;
                });
              })
        ],
      ),
    );
  }
}
