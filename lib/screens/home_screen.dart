import 'package:flutter/material.dart';
import 'package:my_flutter_project/screens/class_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/carousel.dart';

const List<String> facts = [
  "1. Химия - это наука о веществах и их изменениях.",
  "2. Атомы состоят из протонов, нейтронов и электронов.",
  "3. Вода - это соединение, состоящее из двух атомов водорода и одного атома кислорода (H₂O).",
  "4. Периодическая таблица элементов была создана Дмитрием Менделеевым.",
  "5. Химические реакции могут быть экзотермическими и эндотермическими.",
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Проверь свои знания по химии с нами!'),
        backgroundColor: Color(0xFF1F1F1F),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
          ),
          CustomCarousel(
            imagePaths: [
              'assets/img/p1.png',
              'assets/img/p2.png',
              'assets/img/p3.png',
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: facts.map((fact) => Text(
                fact,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )).toList(),
            ),
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'Начать',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClassScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
