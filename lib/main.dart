import 'package:flutter/material.dart';
import 'package:my_flutter_project/screens/class_screen.dart';
import 'package:my_flutter_project/test/Class8Screen.dart';
import 'package:my_flutter_project/test/Class9Screen.dart';
import 'package:my_flutter_project/test/Class10Screen.dart';
import 'package:my_flutter_project/test/Class11Screen.dart';
import 'screens/home_screen.dart';
import 'styles/app_theme.dart' as Tema;

void main() {
  runApp(ChemistryApp());
}

class ChemistryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemistry Quiz',
      theme: Tema.AppTheme.lightTheme, // Используем базовую тему
      initialRoute: '/', // Устанавливаем начальный маршрут
      routes: {
        '/': (context) => HomeScreen(), // Главный экран
        '/class': (context) => ClassScreen(), // Экран выбора класса
        '/class8': (context) => Class8(), // Экран класса 8
        '/class9': (context) => Class9(), // Экран класса 9
        '/class10': (context) => Class10(), // Экран класса 10
        '/class11': (context) => Class11(), // Экран класса 11
      },
    );
  }
}