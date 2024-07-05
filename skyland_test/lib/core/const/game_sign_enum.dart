enum Sign {
  stone(0),
  paper(1),
  scissor(2),
  noSign(-1);

  final int selectedSign;
  const Sign(this.selectedSign);
}

enum GameResult { humanWin, mobileWin, draw }
