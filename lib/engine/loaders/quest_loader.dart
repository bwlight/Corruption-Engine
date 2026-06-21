import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class QuestChoice {
  final String text;
  final String next;
  final List<String> requirements;
  final Map<String, dynamic> effects;

  QuestChoice({
    required this.text,
    required this.next,
    required this.requirements,
    required this.effects,
  });

  factory QuestChoice.fromJson(Map<String, dynamic> json) {
    return QuestChoice(
      text: json['text'],
      next: json['next'],
      requirements: List<String>.from(json['requirements'] ?? []),
      effects: json['effects'] ?? {},
    );
  }
}

class QuestStep {
  final String id;
  final String text;
  final List<QuestChoice> choices;

  QuestStep({
    required this.id,
    required this.text,
    required this.choices,
  });

  factory QuestStep.fromJson(Map<String, dynamic> json) {
    return QuestStep(
      id: json['id'],
      text: json['text'],
      choices: (json['choices'] as List<dynamic>? ?? [])
          .map((c) => QuestChoice.fromJson(c))
          .toList(),
    );
  }
}

class Quest {
  final String id;
  final String title;
  final String description;
  final List<QuestStep> steps;
  final List<String> rewards;

  Quest({
    required this.id,
    required this.title,
    required this.description,
    required this.steps,
    required this.rewards,
  });

  factory Quest.fromJson(Map<String, dynamic> json) {
    return Quest(
      id: json['id'],
      title: json['title'],
      description: json['description'] ?? "",
      steps: (json['steps'] as List<dynamic>)
          .map((s) => QuestStep.fromJson(s))
          .toList(),
      rewards: List<String>.from(json['rewards'] ?? []),
    );
  }
}

class QuestLoader {
  Future<List<Quest>> loadQuests(String path) async {
    final raw = await rootBundle.loadString(path);
    final list = jsonDecode(raw) as List<dynamic>;
    return list.map((e) => Quest.fromJson(e)).toList();
  }
}