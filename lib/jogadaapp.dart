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

Future jogadaprincapp() async {
// AINDA NAO SELECIONANDO A CELULA DA TERCEIRA JOGADA DO USUARIO DE TRINCA.
// SE MARCAR A 0 E A 8 NAO MARCA A 4.
// ERRO EM POSIC.LENGTH FICANDO 24.

// Avaliar celulas com jogadas do usuario para a frente

  var st1 = 0;
  int encontrou = 0;

  for (int a = 0; a < 9; a++) {
    var o = 0;
    if (cels[a] == "A" && encontrou == 0) {
      for (int t = 0; t < posic.length; t++) {
        if (t % 3 == 0) {
          st1 = t;
        }
        if (a == posic[t]) {
          for (int c = st1; c < st1 + 3; c++) {
            if (cels[posic[c]] == "A") {
              o += 1;
            }
          }

          for (int c = st1; c < st1 + 3; c++) {
            if (cels[posic[c]] == "I" && o == 2) {
              int d = posic[c];
              cels[d] = "B";
              bkcel[d] = MaterialStateProperty.all(Colors.brown);
              icon[d] = Icon(Icons.android, size: 80);
              c = st1 + 3;
              t = posic.length;
              a = 9;
              print("jogadaapp0A");
              encontrou = 1;
            }
          }
        }
      }
    }
  }
// Avaliar celulas com jogadas do usuario para atrás.

  for (int a = 8; a >= 0; a--) {
    var o = 0;
    var st2 = 21;
    if (cels[a] == "A" && encontrou == 0) {
      for (int j = posic.length; j > 0; j--) {
        if (j % 3 == 0) {
          st2 = j;
        }
        if (a == posic[j]) {
          for (int c = st2 + 2; c >= st2; c--) {
            if (cels[posic[c]] == "A") {
              o += 1;
            }
          }

          for (int c = st2 + 2; c >= st2; c--) {
            if (cels[posic[c]] == "I" && o == 2) {
              int d = posic[c];
              cels[d] = "B";
              bkcel[d] = MaterialStateProperty.all(Colors.brown);
              icon[d] = Icon(Icons.android, size: 80);
              c = st2 - 1;
              j = 0;
              a = -1;
              print("jogadaapp0B");
              encontrou = 1;
            }
          }
        }
      }
    }
  }

// Avaliar celulas com jogadas do app
  var st3 = 0;

  for (int a = 0; a < 9; a++) {
    var o = 0;
    if (cels[a] == "B" && encontrou == 0) {
      for (int b = 0; b < posic.length; b++) {
        if (b % 3 == 0) {
          st3 = b;
        }
        if (a == posic[b]) {
          for (int c = st3; c < st3 + 3; c++) {
            if (cels[posic[c]] == "A") {
              o = 1;
            }
          }

          for (int c = st3; c < st3 + 3; c++) {
            if (cels[posic[c]] == "I" && o == 0) {
              int d = posic[c];
              cels[d] = "B";
              bkcel[d] = MaterialStateProperty.all(Colors.brown);
              icon[d] = Icon(Icons.android, size: 80);
              c = st3 + 3;
              b = posic.length;
              a = 9;
              print("jogadaapp1");
              encontrou = 1;
            }
          }
        }
      }
    }
  }
  if (encontrou == 0) {
    jogadaopcapp();
  }
}

Future jogadaopcapp() async {
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
          print("jogadaapp2");
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
          print("jogadaapp3");
          return escolhaapp;
        }
      }
    }
  }
  if (encontrou == 0) {
    for (i = 0; i < cels.length; i++) {
      if (cels[i] == "A" && encontrou == 0 && i != cels.length - 1) {
        for (t = i; t < cels.length; t++) {
          if (cels[t] == "I" && t - i <= 2) {
            escolhaapp = t;
            t = cels.length;
            encontrou = 1;
            i = cels.length;
            cels[escolhaapp] = "B";
            bkcel[escolhaapp] = MaterialStateProperty.all(Colors.brown);
            icon[escolhaapp] = Icon(Icons.android, size: 80);
            print("jogadaapp4");
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
            print("jogadaapp5");
            return escolhaapp;
          }
        }
      }
    }
  }
}
