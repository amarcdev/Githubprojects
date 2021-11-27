import 'package:crosscircle/rules.dart';

var jogador = "Usuário";
int celselecapp = 0;
int primjoga = 1; //Para começar com o app == 2
int ultjoga = 9; //Para começar com o app == 10
int vez = 1;
jogadas() {
  for (int vez = primjoga; vez <= ultjoga; vez++) {
    if (vez % 2 != 0) {
      jogador = "Usuário";
      print("Escolha a célula $jogador!");
      print("$cels\n");
    }
    if (vez % 2 == 0) {
      jogador = "App";
      print("Escolha a célula $jogador!");
      print("$cels\n");
      //print(fimtenta);
      //print(jogadaapp());
    }
    if (vez == ultjoga && trincar() == 0) {
      print("Ninguém ganhou!");
    }
    if (trincar() == 1) {
      vez = ultjoga;
    }
  }
}
