import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Entity {
  final String id;
  final String name;
  final String description;
  final int hp;
  final int atk;
  final int def;
  final List<String> tags;

  Entity({
    required this.id,
    required this.name,
    required this.description,
    required this.hp,
    required this.atk,
    required this.def,
    required this.tags,
  });

  factory Entity.fromJson(Map<String, dynamic> json) {
    return Entity(
      id: json['id'],
      name: json['name'],
      description: json['description'] ?? "",
      hp: json['stats']['hp'],
      atk: json['stats']['atk'],
      def: json['stats']['def'],
      tags: List<String>.from(json['tags'] ?? []),
    );
  }
}

class EntityLoader {
  Future<List<Entity>> loadEntities(String path) async {
    final raw = await rootBundle.loadString(path);
    final list = jsonDecode(raw) as List<dynamic>;
    return list.map((e) => Entity.fromJson(e)).toList();
  }
}