import 'dart:math';

//import 'package:crosscircle/logic.dart';

import 'package:crosscircle/jogadaapp.dart';
import 'package:crosscircle/logic.dart';

//int encontrou = 0;
//int t = 0;
//int u = 0;
Random random = Random();
testar() {
  int escolhaapp = 0, t = 0, u = 0, v = 0, i = 0, z = 0;
  Random random = Random(9);
  int encontrou = 0;
  for (v = 0; v < 15; v++) {
    z = random.nextInt(9);
    print(z);
  }

/*
if (encontrou == 0) {
    for (v = 0; v < 10; v++) {
      z = random.nextInt(9);
      if (cels[z] == "I") {
        escolhaapp = z;
        v = 10;
        encontrou = 1;
        i = cels.length;
        return escolhaapp;
      }
    }
  }
  if (encontrou == 0) {
    for (z = 0; z < cels.length; z++) {
      if (cels[z] == "I") {
        escolhaapp = z;
        z = cels.length;
        encontrou = 1;
        i = cels.length;
        return escolhaapp;
      }
    }
  }
  
  for (int i = 0; i < cels.length; i++) {
    if (cels[i] == "B" && encontrou == 0) {
      for (int t = i; t < cels.length; t++) {
        if (cels[t] == "I" && t - i <= 2) {
          cels[t] = "B";
          int escolhaapp = t;
          t = cels.length;
          encontrou = 1;
          return escolhaapp;
        } else if (cels[i] == "B" && encontrou == 0) {
          for (int u = i; u >= 0; u--) {
            if (cels[u] == "I" && i - u <= 2) {
              cels[u] = "B";
              int escolhaapp = u;
              u = 0;
              encontrou = 1;
              return escolhaapp;
            }
          }
        } else {
          for (int i = 0; i < cels.length; i++) {
            if (cels[i] == "I" && encontrou == 0) {
              cels[i] = "B";
              int escolhaapp = i;
              i = cels.length;
              encontrou = 1;
              return escolhaapp;
            }
          }
        }
      }
    }
  }
 */
/* var teste1 = ["A", "A", "A", "B", "B", "I", "I", "B", "B"];
  var teste2 = ["A", "A", "I", "B", "A", "A", "I", "I", "X"];
  var teste3 = ["I", "I", "I", "I", "I", "I", "I", "I", "I"]; */
  /*
 ["A", "X", "X", "A", "X", "X", "A", "X", "X"]
 ["X", "X", "X", "A", "A", "A", "X", "X", "X"]
 ["X", "A", "X", "X", "A", "X", "X", "A", "X"]
 ["X", "X", "X", "X", "X", "X", "A", "A", "A"]
 ["X", "X", "A", "X", "X", "A", "X", "X", "A"]
 ["A", "X", "X", "X", "A", "X", "X", "X", "A"]
 ["X", "X", "A", "X", "A", "X", "A", "X", "X"]

// (0) (1) (2)
// (3) (4) (5)
// (6) (7) (8)

 */

  /*
  teste3.add(i.toString());
  print(teste.getRange(0, 2).toString() ==
      "(A, A)"); //teste2.getRange(0, 1).toString());
  print(cels[2].contains(teste[2]));
  print(teste.first);
  print(teste.last);
  print(teste.asMap());
  print(teste.getRange(t, t + 2));
  print(teste.firstWhere((letra) => letra == "A"));
  print(teste.lastWhere((letra) => letra == "A"));
  print(teste.singleWhere((letra) => letra == "X"));
  print(teste.every((letra) => letra == "X"));
  print(teste.take(3).toList()); //Trazendo os n primeiros
  print(teste.skip(3).toList()); //Pulando os n primeiros
  print(teste.indexWhere(
      (letra) => letra == "A")); //Trazendo o index do primeiro que atende
  print(teste.lastIndexWhere(
      (letra) => letra == "A")); //Trazendo o index do último que atende
  print(teste.indexOf("A")); //Trazendo o index do primeiro que atende*/
}
