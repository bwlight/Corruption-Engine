import '../engine/game_state.dart';
import 'corruption_branching_system.dart';

class QuestSystem {
  final CorruptionBranchingSystem branching = CorruptionBranchingSystem();

  List<QuestChoice> getAvailableChoices(GameState state, QuestStep step) {
    return step.choices.where((choice) {
      return branching.meetsAll(state, choice.requirements);
    }).toList();
  }

  void applyChoice(GameState state, QuestChoice choice) {
    branching.applyEffects(state, choice.effects);
  }
}