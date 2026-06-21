import '../engine/game_state.dart';
import 'corruption_branching_system.dart';

class RoomSystem {
  final Map<String, Room> rooms = {};
  final CorruptionBranchingSystem branching = CorruptionBranchingSystem();

  void registerRoom(Room room) {
    rooms[room.id] = room;
  }

  Room? getRoom(String id) => rooms[id];

  List<RoomChoice> getAvailableChoices(GameState state, Room room) {
    return room.choices.where((choice) {
      return branching.meetsAll(state, choice.requirements);
    }).toList();
  }

  void applyChoice(GameState state, RoomChoice choice) {
    branching.applyEffects(state, choice.effects);
  }
}