import 'package:crosscircle/single.dart';
import 'package:flutter/material.dart';
import 'rules.dart';

Future jogadaapp() async {
  int escolhaapp = 0, t = 0, u = 0, i = 0;
  int encontrou = 0;
  for (i = 0; i < cels.length; i++) {
    if (cels[i] == "B" && encontrou == 0) {
      for (t = i; t < cels.length; t++) {
        if (cels[t] == "I" && t - i <= 2) {
          escolhaapp = t;
          t = cels.length;
          encontrou = 1;
          i = cels.length;
          cels[escolhaapp] = "B";
          bkcel[escolhaapp] =MaterialStateProperty.all(Colors.brown);
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
          bkcel[escolhaapp] =MaterialStateProperty.all(Colors.brown);
          icon[escolhaapp] = Icon(Icons.android, size: 80);
          return escolhaapp;
        }
      }
    }
  }
  if (encontrou == 0) {
    for (i = 0; i < cels.length; i++) {
      if (cels[i] == "A" && encontrou == 0) {
        for (t = i; t < cels.length; t++) {
          if (cels[t] == "I" && t - i <= 2) {
            escolhaapp = t;
            t = cels.length;
            encontrou = 1;
            i = cels.length;
            cels[escolhaapp] = "B";
            bkcel[escolhaapp] =MaterialStateProperty.all(Colors.brown);
            icon[escolhaapp] = Icon(Icons.android, size: 80);
            return escolhaapp;
          }
        }
      } else if (cels[i] == "A" && encontrou == 0) {
        for (u = i; u >= 0; u--) {
          if (cels[u] == "I" && i - u <= 2) {
            escolhaapp = u;
            u = 0;
            encontrou = 1;
            i = cels.length;
            cels[escolhaapp] = "B";
            bkcel[escolhaapp] =MaterialStateProperty.all(Colors.brown);
            icon[escolhaapp] = Icon(Icons.android, size: 80);
            return escolhaapp;
          }
        }
      }
    }
  }
}