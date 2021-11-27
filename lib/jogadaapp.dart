import 'dart:math';

import 'package:crosscircle/logic.dart';

jogadaapp() {
  int escolhaapp = 0, t = 0, u = 0, v = 0, i = 0, z = 0;

  int encontrou = 0;
  for (i = 0; i < cels.length; i++) {
    if (cels[i] == "B" && encontrou == 0) {
      for (t = i; t < cels.length; t++) {
        if (cels[t] == "I" && t - i <= 2) {
          escolhaapp = t;
          t = cels.length;
          encontrou = 1;
          i = cels.length;
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
            return escolhaapp;
          }
        }
      }
    }
  }
}
