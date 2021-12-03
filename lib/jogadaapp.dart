import 'package:crosscircle/single.dart';
import 'package:flutter/material.dart';
import 'rules.dart';

var trinc1 = [0, 1, 2];
var trinc2 = [0, 3, 6];
var trinc3 = [3, 4, 5];
var trinc4 = [1, 4, 7];
var trinc5 = [6, 7, 8];
var trinc6 = [2, 5, 8];
var trinc7 = [0, 4, 8];
var trinc8 = [2, 4, 6];

int resultapp = 5;

testar() {
  for (a = 0;a<9;a++){
    if (cels[a]=="B"){
      for (int b = 0; b < 3; b++){
        if (a == trinc1[b]){
          for(int c=0;c<trinc1.length;c++){
            if(cels[trinc1[c]]=="I"){
              if(a>trinc1[c]){
                int d = c;
                resultapp = trinc1[d];
                return resultapp;
              }else if(a<trinc1[c]){
                int d = c;
                resultapp = trinc1[d]
                print(maior);
                a=9;
                return resultapp;
              }
            }
          }
        }
      }
    }else{}
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
            bkcel[escolhaapp] = MaterialStateProperty.all(Colors.brown);
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
            bkcel[escolhaapp] = MaterialStateProperty.all(Colors.brown);
            icon[escolhaapp] = Icon(Icons.android, size: 80);
            return escolhaapp;
          }
        }
      }
    }
  }
}
