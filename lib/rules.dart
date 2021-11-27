var cels = ["B", "I", "I", "I", "I", "I", "I", "I", "I"];

trincar() {
  if ((cels[0] == "A" && cels[1] == "A" && cels[2] == "A") ||
      (cels[0] == "A" && cels[3] == "A" && cels[6] == "A") ||
      (cels[3] == "A" && cels[4] == "A" && cels[5] == "A") ||
      (cels[1] == "A" && cels[4] == "A" && cels[7] == "A") ||
      (cels[6] == "A" && cels[7] == "A" && cels[8] == "A") ||
      (cels[2] == "A" && cels[5] == "A" && cels[8] == "A") ||
      (cels[0] == "A" && cels[4] == "A" && cels[8] == "A") ||
      (cels[2] == "A" && cels[4] == "A" && cels[6] == "A")) {
    print("Usuário ganhou!");
    print(cels);
    return 2;
  } else if ((cels[0] == "B" && cels[1] == "B" && cels[2] == "B") ||
      (cels[0] == "B" && cels[3] == "B" && cels[6] == "B") ||
      (cels[3] == "B" && cels[4] == "B" && cels[5] == "B") ||
      (cels[1] == "B" && cels[4] == "B" && cels[7] == "B") ||
      (cels[6] == "B" && cels[7] == "B" && cels[8] == "B") ||
      (cels[2] == "B" && cels[5] == "B" && cels[8] == "B") ||
      (cels[0] == "B" && cels[4] == "B" && cels[8] == "B") ||
      (cels[6] == "B" && cels[4] == "B" && cels[2] == "B")) {
    print("App ganhou!");
    print(cels);
    return 1;
  } else {
    return 0;
  }
}
