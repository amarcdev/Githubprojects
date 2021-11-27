import 'package:flutter/material.dart';

class CrossCircle extends StatefulWidget {
  const CrossCircle({Key? key}) : super(key: key);

  @override
  _CrossCircleState createState() => _CrossCircleState();
}

class _CrossCircleState extends State<CrossCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jogo"),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Subheader',
          ),
        ));
  }
}
