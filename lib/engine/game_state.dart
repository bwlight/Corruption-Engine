class GameState {
  int corruption = 0;
  String currentRoom = "start";

  Map<String, dynamic> flags = {};

  void setFlag(String key, dynamic value) {
    flags[key] = value;
  }

  dynamic getFlag(String key) {
    return flags[key];
  }
}