import 'package:crosscircle/jogadaapp.dart';
import 'package:crosscircle/rules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrossCircle extends StatefulWidget {
  const CrossCircle({Key? key}) : super(key: key);

  @override
  _CrossCircleState createState() => _CrossCircleState();
}

var bkcel = [
  MaterialStateProperty.all(Colors.grey),
  MaterialStateProperty.all(Colors.grey),
  MaterialStateProperty.all(Colors.grey),
  MaterialStateProperty.all(Colors.grey),
  MaterialStateProperty.all(Colors.grey),
  MaterialStateProperty.all(Colors.grey),
  MaterialStateProperty.all(Colors.grey),
  MaterialStateProperty.all(Colors.grey),
  MaterialStateProperty.all(Colors.grey)
];
var icon = [
  Icon(null),
  Icon(null),
  Icon(null),
  Icon(null),
  Icon(null),
  Icon(null),
  Icon(null),
  Icon(null),
  Icon(null)
];

class _CrossCircleState extends State<CrossCircle> {
  snackselec() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'Já foi selecionada. Tente outra opção!',
          textAlign: TextAlign.center,
        ),
        duration: Duration(seconds: 2),
        action: SnackBarAction(label: '', onPressed: () {})));
  }

  snacknaoselec() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('O App já acabou de jogar. Sua vez agora!'),
        duration: Duration(seconds: 2),
        action: SnackBarAction(label: 'Teste', onPressed: () {})));
  }

  alertrinca(i) {
    if (i == 1) {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) =>
      AlertDialog(
        title: Text('Temos um vencedor!'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Que pena! o App ganhou!'),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Recomeçar'),
            onPressed: () {
              initState();
            },
          ),
        ],
      ));
    } else if (i == 2) {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) =>
      AlertDialog(
        title: Text('Temos um vencedor!'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Parabéns! Você ganhou!'),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Recomeçar'),
            onPressed: () {
              initState();
            },
          ),
        ],
      ));
    }else{}
  }

  var aligcross = CrossAxisAlignment.center;
  var aligmain = MainAxisAlignment.spaceAround;
  var tamancel = MaterialStateProperty.all(Size(80, 80));
  var paddcel = MaterialStateProperty.all(EdgeInsets.zero);
  var aligstyl = Alignment.center;
  var corusuar = MaterialStateProperty.all(Colors.green);
  var iconusuar = Icon(Icons.insert_emoticon_sharp, size: 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jogo da Trinca"),
          backgroundColor: Colors.grey,
        ),
        body: Column(
            crossAxisAlignment: aligcross,
            mainAxisAlignment: aligmain,
            children: [
              Text(
                "Ganha quem marcar três sequências na horizontal, vertical ou diagonal!",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Container(
                  child: Row(
                crossAxisAlignment: aligcross,
                mainAxisAlignment: aligmain,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[0],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[0] == "I") {
                          bkcel[0] = corusuar;
                          cels[0] = "A";
                          icon[0] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[0],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[1],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[1] == "I") {
                          bkcel[1] = corusuar;
                          cels[1] = "A";
                          icon[1] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[1],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[2],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[2] == "I") {
                          bkcel[2] = corusuar;
                          cels[2] = "A";
                          icon[2] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[2],
                  ),
                ],
              )),
              Row(
                crossAxisAlignment: aligcross,
                mainAxisAlignment: aligmain,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[3],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[3] == "I") {
                          bkcel[3] = corusuar;
                          cels[3] = "A";
                          icon[3] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[3],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[4],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[4] == "I") {
                          bkcel[4] = corusuar;
                          cels[4] = "A";
                          icon[4] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[4],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[5],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[5] == "I") {
                          bkcel[5] = corusuar;
                          cels[5] = "A";
                          icon[5] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[5],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: aligcross,
                mainAxisAlignment: aligmain,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[6],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[6] == "I") {
                          bkcel[6] = corusuar;
                          cels[6] = "A";
                          icon[6] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[6],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[7],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[7] == "I") {
                          bkcel[7] = corusuar;
                          cels[7] = "A";
                          icon[7] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[7],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        alignment: aligstyl,
                        backgroundColor: bkcel[8],
                        padding: paddcel,
                        fixedSize: tamancel),
                    onPressed: () {
                      setState(() {
                        if (cels[8] == "I") {
                          bkcel[8] = corusuar;
                          cels[8] = "A";
                          icon[8] = iconusuar;
                          snacknaoselec();
                          jogadaapp();
                          return;
                        } else {
                          snackselec();
                        }
                      });
                      alertrinca(trincar());
                    },
                    child: icon[8],
                  ),
                ],
              )
            ]));
  }
}
