const assetPath = 'assets/images';

enum InputType {
  rock,
  paper,
  scissors;

  String get path => '$assetPath/$name.png';
}

enum Result {
  playerWin("Player Wins"),
  draw("Draw"),
  cpuWin("CPU Wins");

  const Result(this.displayString);

  final String displayString;
}