import 'package:flutter/material.dart';
import '../widgets/class_list_item.dart';

class ClassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Выберите ваш класс'),
        backgroundColor: Color.fromARGB(255, 32, 44, 27),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: ListView(
          children: <Widget>[
            ClassListItem(className: '8 класс', route: '/class8'),
            ClassListItem(className: '9 класс', route: '/class9'),
            ClassListItem(className: '10 класс', route: '/class10'),
            ClassListItem(className: '11 класс', route: '/class11'),
          ],
        ),
      ),
    );
  }
}
