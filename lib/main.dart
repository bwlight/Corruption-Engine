import 'package:flutter/material.dart';
import 'ui/screens/main_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DataManager().loadAll();

  runApp(const CorruptionEngineApp());
}

class CorruptionEngineApp extends StatelessWidget {
  const CorruptionEngineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Corruption Engine",
      home: const MainMenuScreen(),
    );
  }
}