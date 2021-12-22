import 'package:crosscircle/single.dart';
import 'package:flutter/material.dart';
import 'rules.dart';

var posic = [
  0,
  1,
  2,
  0,
  3,
  6,
  3,
  4,
  5,
  1,
  4,
  7,
  6,
  7,
  8,
  2,
  5,
  8,
  0,
  4,
  8,
  2,
  4,
  6
];


Future testar() async {
  var st = 0;

  int encontrou = 0;
  for (int a = 0; a < 9; a++) {
    var o = 0;
    if (cels[a] == "B" && encontrou == 0) {
      for (int b = 0; b < posic.length; b++) {
        if (b % 3 == 0) {
          st = b;
        }
        if (a == posic[b]) {
          for (int c = st; c < st + 3; c++) {
            if (cels[posic[c]] == "A") {
              o = 1;
            }}

          for (int c = st; c < st + 3; c++) {
            if (cels[posic[c]] == "I" && o == 0) {
              int d = posic[c];
              cels[d] = "B";
              bkcel[d] = MaterialStateProperty.all(Colors.brown);
              icon[d] = Icon(Icons.android, size: 80);
              c = st + 3;
              b = posic.length;
              a = 9;
              print ("jogou");
              encontrou = 1;
            }
          }
        }
      }
    }
  }
  if (encontrou == 0){
    jogadaapp();
  }
}

Future jogadaapp() async {
  int escolhaapp = 0, encontrou = 0, t = 0, u = 0, i = 0;
  for (i = 0; i < cels.length; i++) {
    if (cels[i] == "B" && encontrou == 0) {
      for (t = i; t < cels.length; t++) {
        if (cels[t] == "I" && t - i <= 2) {
          escolhaapp = t;
          t = cels.length;
          encontrou = 1;
          i = cels.length;
          cels[escolhaapp] = "B";
          bkcel[escolhaapp] = MaterialStateProperty.all(Colors.brown);
          icon[escolhaapp] = Icon(Icons.android, size: 80);
          return escolhaapp;
        }
      }
    } else if (cels[i] == "B" && encontrou == 0) {
      for (u = i; u >= 0; u--) {
        if (cels[u] == "I" && i - u <= 2) {
          escolhaapp = u;
          u = 0;
          encontrou = 1;
          i = cels.length;
          cels[escolhaapp] = "B";
          bkcel[escolhaapp] = MaterialStateProperty.all(Colors.brown);
          icon[escolhaapp] = Icon(Icons.android, size: 80);
          return escolhaapp;
        }
      }
    }
  }
  if (encontrou == 0 ) {
    for (i = 0; i < cels.length; i++) {
      if (cels[i] == "A" && encontrou == 0 && i != cels.length-1) {
        for (t = i; t < cels.length; t++) {
          if (cels[t] == "I" && t - i <= 2) {
            escolhaapp = t;
            t = cels.length;
            encontrou = 1;
            i = cels.length;
            cels[escolhaapp] = "B";
            bkcel[escolhaapp] = MaterialStateProperty.all(Colors.brown);
            icon[escolhaapp] = Icon(Icons.android, size: 80);
            return escolhaapp;
          }
        }
      } else if (cels[i] == "A" && encontrou == 0 && i != 0) {
        for (u = i; u >= 0; u--) {
          if (cels[u] == "I" && i - u <= 2) {
            escolhaapp = u;
            u = 0;
            encontrou = 1;
            i = cels.length;
            cels[escolhaapp] = "B";
            bkcel[escolhaapp] = MaterialStateProperty.all(Colors.brown);
            icon[escolhaapp] = Icon(Icons.android, size: 80);
            return escolhaapp;
          }
        }
      }
    }
  }
}
