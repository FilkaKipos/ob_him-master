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

class Class10 extends StatefulWidget {
  @override
  _Class8State createState() => _Class8State();
}

class _Class8State extends State<Class10> {
  List<String> selectedAnswers = []; // Инициализация списка выбранных ответов

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    theme: AppTheme.lightTheme,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Тест для 10 класса'),
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
                'Что такое электронегативность?',
                ['Особое свойство электронов', 'Способность атома притягивать к себе электроны', 'Мера количества электронов в атоме', 'Энергия электронов в атоме'],
                ['Способность атома притягивать к себе электроны'],
                'Электронегативность - это мера способности атома притягивать к себе электроны.'),
              SizedBox(height: 20),
              _buildQuestionCard(
                context,
                'Вопрос 2:',
                'Какие основные виды химических связей вы знаете?',
                ['Ионная связь', 'Ковалентная связь', 'Металлическая связь', 'Водородная связь'],
                ['Ионная связь', 'Ковалентная связь', 'Металлическая связь', 'Водородная связь'],
                'Основные виды химических связей: ионная, ковалентная, металлическая и водородная связь.'),
              _buildQuestionCard(
                context,
                'Вопрос 3:',
                'Что такое реакция окисления и восстановления?',
                ['Процессы, при которых происходит обмен электронами', 'Процессы, при которых образуются новые соединения', 'Процессы, при которых происходит изменение температуры', 'Процессы, при которых происходит образование новых веществ'],
                ['Процессы, при которых происходит обмен электронами'],
                'Реакция окисления - это процесс потери электронов, а восстановления - получение электронов.'),
              _buildQuestionCard(
                context,
                'Вопрос 4:',
                'Какие основные элементы содержатся в органических соединениях?',
                ['Углерод и водород', 'Кислород и водород', 'Азот и кислород', 'Фосфор и сера'],
                ['Углерод и водород'],
                'Органические соединения содержат углерод и водород как основные элементы.'),
              _buildQuestionCard(
                context,
                'Вопрос 5:',
                'Что такое катализатор в химии?',
                ['Вещество, участвующее в химической реакции', 'Вещество, ускоряющее химическую реакцию', 'Вещество, которое прекращает химическую реакцию', 'Вещество, которое не изменяет скорость химической реакции'],
                ['Вещество, ускоряющее химическую реакцию'],
                'Катализатор - это вещество, которое ускоряет химическую реакцию, но само при этом не изменяется.'),
              _buildQuestionCard(
                context,
                'Вопрос 6:',
                'Какие основные характеристики ациклических углеводородов вы знаете?',
                ['Углероды располагаются в виде кольца', 'Углероды располагаются в виде цепи', 'Содержат одно или несколько кольцевых замыканий', 'Образуют трехмерные структуры'],
                ['Углероды располагаются в виде цепи'],
                'Ациклические углеводороды представляют собой углеводороды, у которых углероды располагаются в виде цепи.'),
              _buildQuestionCard(
                context,
                'Вопрос 7:',
                'Какие основные методы получения солей из кислот вы можете назвать?',
                ['Декомпозиция', 'Окисление', 'Реакция с основаниями', 'Реакция с кислородом'],
                ['Реакция с основаниями'],
                'Соли получаются в результате реакции кислоты с основаниями, при этом выделяется вода.'),
_buildQuestionCard(
                context,
                'Вопрос 9:',
                'Что такое молярная масса в химии?',
                ['Масса одного моля вещества', 'Масса одного атома вещества', 'Масса одного молекулы вещества', 'Масса одного электрона вещества'],
                ['Масса одного моля вещества'],
                'Молярная масса вещества - это масса одного моля данного вещества.'),
              _buildQuestionCard(
                context,
                'Вопрос 10:',
                'Что такое активная энергия в химии?',
                ['Минимальная энергия, необходимая для начала химической реакции', 'Энергия, выделяемая в химической реакции', 'Энергия связи между атомами вещества', 'Энергия, необходимая для разрушения химических связей'],
                ['Минимальная энергия, необходимая для начала химической реакции'],
                'Активная энергия в химии - это минимальная энергия, необходимая для начала химической реакции.')
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
  runApp(Class10());
}
