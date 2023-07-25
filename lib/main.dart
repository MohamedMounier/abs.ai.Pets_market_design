import 'package:abs_ai_pet_design/core/resources/theme_manager.dart';
import 'package:abs_ai_pet_design/presentation/pets_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getAppTheme(),
      home: const PetsScreen(),
    );
  }
}
