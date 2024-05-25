import 'package:flutter/material.dart';

class ClassListItem extends StatelessWidget {
  final String className;
  final String route;

  ClassListItem({required this.className, required this.route});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        className,
        style: TextStyle(fontSize: 24, color: Color(0xFFBCFD4C)),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
