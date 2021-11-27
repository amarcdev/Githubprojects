import 'package:crosscircle/jogadaapp.dart';
import 'package:crosscircle/rules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrossCircle extends StatefulWidget {
  const CrossCircle({Key? key}) : super(key: key);

  @override
  _CrossCircleState createState() => _CrossCircleState();
}

//var bkcel0,bkcel1,bkcel2,bkcel3,bkcel4,bkcel5,bkcel6,bkcel7,bkcel8 = MaterialStateProperty.all(Colors.black);
var icon0, icon1, icon2, icon3, icon4, icon5, icon6, icon7, icon8 = Icon(null);

class _CrossCircleState extends State<CrossCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jogo"),
          backgroundColor: Colors.grey,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueGrey),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        fixedSize: MaterialStateProperty.all(Size(100, 100))),
                    onPressed: () {
                      setState(() {
                        if (cels[0] == "I") {
                          //bkcel0 = MaterialStateProperty.all(Colors.green);
                          cels[0] = "A";
                          icon0 = Icon(Icons.insert_emoticon_sharp, size: 80);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  'O App já acabou de jogar. Sua vez agora!'),
                              duration: Duration(seconds: 3),
                              action: SnackBarAction(
                                  label: 'Teste', onPressed: () {})));
                          return;
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text('Já foi escolhida. Tente outra vez!'),
                              duration: Duration(seconds: 3),
                              action: SnackBarAction(
                                  label: 'Cancelar', onPressed: () {})));
                        }
                      });
                      jogadaapp();
                      trincar();
                      print(trincar());
                      print(cels);
                      print("Jogada realizada");
                    },
                    child: icon0,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100, 100))),
                      onPressed: null,
                      child: Text("Teste2")),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100, 100))),
                      onPressed: null,
                      child: Text("Teste3"))
                ],
              )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100, 100))),
                      onPressed: null,
                      child: Text("Teste4")),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100, 100))),
                      onPressed: null,
                      child: Text("Teste5")),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100, 100))),
                      onPressed: null,
                      child: Text("Teste6"))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100, 100))),
                      onPressed: null,
                      child: Text("Teste7")),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100, 100))),
                      onPressed: null,
                      child: Text("Teste8")),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100, 100))),
                      onPressed: null,
                      child: Text("Teste9"))
                ],
              )
            ]));
  }
}
