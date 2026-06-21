import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class RoomChoice {
  final String text;
  final String target;
  final List<String> requirements;
  final Map<String, dynamic> effects;

  RoomChoice({
    required this.text,
    required this.target,
    required this.requirements,
    required this.effects,
  });

  factory RoomChoice.fromJson(Map<String, dynamic> json) {
    return RoomChoice(
      text: json['text'],
      target: json['target'],
      requirements: List<String>.from(json['requirements'] ?? []),
      effects: json['effects'] ?? {},
    );
  }
}

class Room {
  final String id;
  final String description;
  final List<RoomChoice> choices;

  Room({
    required this.id,
    required this.description,
    required this.choices,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'],
      description: json['description'],
      choices: (json['choices'] as List<dynamic>)
          .map((c) => RoomChoice.fromJson(c))
          .toList(),
    );
  }
}

class RoomLoader {
  Future<List<Room>> loadRooms(String path) async {
    final raw = await rootBundle.loadString(path);
    final list = jsonDecode(raw) as List<dynamic>;
    return list.map((e) => Room.fromJson(e)).toList();
  }
}