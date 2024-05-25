import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Color(0xFF1F1F1F),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFBCFD4C)),
      dialogBackgroundColor: const Color.fromARGB(255, 180, 175, 175),
      scaffoldBackgroundColor: Color(0xFF1F1F1F),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: Color(0xFFBCFD4C),
          fontFamily: 'Roboto',
          fontSize: 18,
        ),
        bodyMedium: TextStyle(
          color: Color(0xFFBCFD4C),
          fontFamily: 'Roboto',
          fontSize: 16,
        ),
        titleLarge: TextStyle(
          color: Color(0xFFBCFD4C),
          fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1F1F1F),
        titleTextStyle: TextStyle(
          color: Color(0xFFBCFD4C),
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Color(0xFFBCFD4C)),
          textStyle: WidgetStateProperty.all<TextStyle?>(TextStyle(color: Color(0xFF1F1F1F))),
        ),
      ),
    );
  }
}

class Class9 extends StatefulWidget {
  @override
  _Class8State createState() => _Class8State();
}

class _Class8State extends State<Class9> {
  List<String> selectedAnswers = []; // Инициализация списка выбранных ответов

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: AppTheme.lightTheme,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Тест для 9 класса'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildQuestionCard(
                context,
                'Вопрос 1:',
                'Какой элемент химического периодического стола имеет химический символ \'Na\'?',
                ['Натрий', 'Неон', 'Никель', 'Натрийхлорид'],
                ['Натрий'],
                'Натрий является щелочным металлом, который широко используется в бытовых и промышленных целях.'
              ),
              SizedBox(height: 20),
              _buildQuestionCard(
                context,
                'Вопрос 2:',
                'Какая частица составляет наименьший фундаментальный элемент химического элемента?',
                ['Протон', 'Нейтрон', 'Электрон', 'Атом'],
                ['Электрон'],
                'Электроны наименее заметны и находятся вокруг ядра атома.'
              ),
              _buildQuestionCard(
                context,
                'Вопрос 3:',
                'Какая из перечисленных ниже формул соответствует молекуле воды?',
                ['H2O', 'CO2', 'NH3', 'NaCl'],
                ['H2O'],
                'Молекула воды состоит из двух атомов водорода и одного атома кислорода.'
              ),
              _buildQuestionCard(
                context,
                'Вопрос 4:',
                'Какой газ необходим для горения?',
                ['Углекислый газ', 'Кислород', 'Водород', 'Азот'],
                ['Кислород'],
                'Кислород играет ключевую роль в окислительно-восстановительных реакциях, таких как горение.'
              ),
              _buildQuestionCard(
                context,
                'Вопрос 5:',
                'Что происходит во время химической реакции?',
                ['Изменение фазы вещества', 'Изменение состава вещества', 'Изменение температуры вещества', 'Изменение объема вещества'],
                ['Изменение состава вещества'],
                'Во время химической реакции происходит образование новых веществ с другими свойствами.'
              ),
              _buildQuestionCard(
                context,
                'Вопрос 6:',
                'Как называется вещество, которое не может быть разложено на больше простые вещества обычными химическими методами?',
                ['Молекула', 'Элемент', 'Соединение', 'Смесь'],
                ['Элемент'],
                'Элементы являются базовыми строительными блоками всех веществ.'
              ),
              _buildQuestionCard(
                context,
                'Вопрос 7:',
                'Как называется вещество, состоящее из атомов одного и того же химического элемента?',
                ['Молекула', 'Элемент', 'Соединение', 'Смесь'],
                ['Элемент'],
                'Вещество, состоящее из атомов одного и того же химического элемента, называется элементом.'
              ),
              _buildQuestionCard(
                context,
                'Вопрос 8:',
                'Какой химический элемент составляет наибольшую часть атмосферы Земли?',
                ['Кислород', 'Азот', 'Углекислый газ', 'Водород'],
                ['Азот'],
                'Азот составляет около 78% объема атмосферы Земли.'
              ),
              _buildQuestionCard(
                context,
                'Вопрос 9:',
                'Как называется химическая связь, при которой атомы обменивают электроны?',
                ['Ионная связь', 'Ковалентная связь', 'Металлическая связь', 'Водородная связь'],
                ['Ковалентная связь'],
                'В ковалентной связи атомы делят пару электронов.'
              ),
              _buildQuestionCard(
                context,
                'Вопрос 10:',
                'Как называется процесс, при котором жидкость превращается в газ?',
                ['Кристаллизация', 'Конденсация', 'Испарение', 'Сублимация'],
                ['Испарение'],
                'Испарение - это процесс, при котором жидкость превращается в газ при достаточной температуре.'
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


  Widget _buildQuestionCard(BuildContext context, String questionTitle, String questionText, List<String> options, List<String> correctAnswers, String hint) {
    return Card(
      color: const Color.fromARGB(255, 44, 43, 43),
      
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              questionTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            Text(
              questionText,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: options.map((option) {
                return CheckboxListTile(
                  title: Text(option, style: Theme.of(context).textTheme.bodyMedium),
                  value: selectedAnswers.contains(option),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value != null && value) {
                        selectedAnswers.add(option);
                      } else {
                        selectedAnswers.remove(option);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add logic to check answer
                bool isCorrect = List.from(selectedAnswers).every((answer) => correctAnswers.contains(answer));
                _showResultDialog(context, isCorrect);
              },
              child: Text('Проверить'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add logic to show hint modal
                _showHintModal(context, hint);
              },
              child: Text('Подсказка'),
            ),
          ],
        ),
      ),
    );
  }

  void _showResultDialog(BuildContext context, bool isCorrect) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Результат'),
          content: Text(isCorrect ? 'Молодец! Ответ верный.' : 'Неверно. Попробуйте еще раз.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Закрыть'),
            ),
          ],
        );
      },
    );
  }

  void _showHintModal(BuildContext context, String hint) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Подсказка'),
          content: Text(hint),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Закрыть'),
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(Class9());
}
