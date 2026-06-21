import '../engine/game_state.dart';

class CorruptionSystem {
  void addCorruption(GameState state, int amount) {
    state.corruption += amount;
  }

  bool isThresholdReached(GameState state, int threshold) {
    return state.corruption >= threshold;
  }
}