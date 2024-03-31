import 'package:who_goes_first/game.dart';

class Rule {
  Rule({
    required this.rule,
    required this.games,
  });

  String rule;
  List<Game> games;
}
