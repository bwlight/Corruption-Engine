import '../engine/game_state.dart';

class CorruptionBranchingSystem {
  bool meetsRequirement(GameState state, String requirement) {
    if (requirement.startsWith("corruption>=")) {
      final value = int.parse(requirement.split(">=").last);
      return state.corruption >= value;
    }

    if (requirement.startsWith("corruption<=")) {
      final value = int.parse(requirement.split("<=").last);
      return state.corruption <= value;
    }

    if (requirement.startsWith("corruption>")) {
      final value = int.parse(requirement.split(">").last);
      return state.corruption > value;
    }

    if (requirement.startsWith("corruption<")) {
      final value = int.parse(requirement.split("<").last);
      return state.corruption < value;
    }

    return true; // Unknown requirement → treat as pass
  }

  bool meetsAll(GameState state, List<String> requirements) {
    for (final req in requirements) {
      if (!meetsRequirement(state, req)) return false;
    }
    return true;
  }

  void applyEffects(GameState state, Map<String, dynamic> effects) {
    if (effects.containsKey("corruption")) {
      state.corruption += effects["corruption"];
    }

    if (effects.containsKey("flag")) {
      state.setFlag(effects["flag"], true);
    }
  }
}