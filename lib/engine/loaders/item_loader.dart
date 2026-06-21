import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ItemEffect {
  final String stat;
  final int amount;

  ItemEffect({required this.stat, required this.amount});

  factory ItemEffect.fromJson(Map<String, dynamic> json) {
    return ItemEffect(
      stat: json['stat'],
      amount: json['amount'],
    );
  }
}

class Item {
  final String id;
  final String name;
  final String type;
  final String description;
  final List<ItemEffect> effects;

  Item({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.effects,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      description: json['description'] ?? "",
      effects: (json['effects'] as List<dynamic>? ?? [])
          .map((e) => ItemEffect.fromJson(e))
          .toList(),
    );
  }
}

class ItemLoader {
  Future<List<Item>> loadItems(String path) async {
    final raw = await rootBundle.loadString(path);
    final list = jsonDecode(raw) as List<dynamic>;
    return list.map((e) => Item.fromJson(e)).toList();
  }
}