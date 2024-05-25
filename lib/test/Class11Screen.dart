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

class Class11 extends StatefulWidget {
  @override
  _Class8State createState() => _Class8State();
}

class _Class8State extends State<Class11> {
  List<String> selectedAnswers = []; // Инициализация списка выбранных ответов

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    theme: AppTheme.lightTheme,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Тест для 11 класса'),
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
                'Какая из перечисленных формул является формулой амфотерного оксида?',
                ['H2O', 'CO2', 'SO2', 'Al2O3'],
                ['Al2O3'],
                'Амфотерный оксид - это оксид, который может реагировать как с кислотами, так и с основаниями.'),
              _buildQuestionCard(
                context,
                'Вопрос 2:',
                'Как называется вещество, у которого количество протонов не равно количеству электронов?',
                ['Ион', 'Изотоп', 'Атом', 'Нейтрон'],
                ['Ион'],
                'Ион - это заряженная частица, у которой количество протонов не равно количеству электронов.'),
              _buildQuestionCard(
                context,
                'Вопрос 3:',
                'Что такое электроотрицательность в химии?',
                ['Способность атома притягивать к себе общие электроны в молекуле', 'Способность атома отдавать свои электроны', 'Способность атома образовывать ионы', 'Способность атома удерживать свои электроны'],
                ['Способность атома притягивать к себе общие электроны в молекуле'],
                'Электроотрицательность в химии - это способность атома притягивать к себе общие электроны в молекуле.'),
              _buildQuestionCard(
                context,
                'Вопрос 4:',
                'Что представляет собой кислородное число в химии?',
                ['Масса, выраженная в граммах одного моля вещества', 'Количество атомов кислорода в молекуле вещества', 'Количество кислорода, необходимое для окисления вещества', 'Массовая доля кислорода в веществе'],
                ['Количество кислорода, необходимое для окисления вещества'],
                'Кислородное число в химии - это количество кислорода, необходимое для окисления вещества.'),
              _buildQuestionCard(
                context,
                'Вопрос 5:',
                'Что такое эквивалент в химии?',
                ['Количество вещества, содержащее один моль атомов', 'Количество вещества, содержащее один моль молекул', 'Количество вещества, способное образовать один моль ионов', 'Количество вещества, обладающее одинаковым количеством реакционных способностей'],
                ['Количество вещества, обладающее одинаковым количеством реакционных способностей'],
                'Эквивалент в химии - это количество вещества, обладающее одинаковым количеством реакционных способностей.'),
              _buildQuestionCard(
                context,
                'Вопрос 6:',
                'Что такое стехиометрия в химии?',
                ['Изучение химических свойств веществ', 'Изучение количественных отношений между реагентами и продуктами химических реакций', 'Изучение строения атомов', 'Изучение изменения состояния вещества'],
                ['Изучение количественных отношений между реагентами и продуктами химических реакций'],
                'Стехиометрия в химии - это изучение количественных отношений между реагентами и продуктами химических реакций.'),
              _buildQuestionCard(
                context,
                'Вопрос 7:',
                'Что такое экзотермическая реакция в химии?',
                ['Реакция, при которой поглощается теплота', 'Реакция, при которой выделяется теплота', 'Реакция, проходящая при высоких температурах', 'Реакция, при которой образуются нестабильные вещества'],
                ['Реакция, при которой выделяется теплота'],
                'Экзотермическая реакция в химии - это реакция, при которой выделяется теплота.'),
              _buildQuestionCard(
                context,
                'Вопрос 8:',
                'Что такое каталитическое действие в химии?',
                ['Процесс, при котором катализатор становится частью реакционного уравнения', 'Процесс, при котором катализатор не изменяет своегоразмера и химических свойств', 'Процесс, при котором катализатор изменяет скорость химической реакции', 'Процесс, при котором катализатор снижает энергию активации химической реакции'],
['Процесс, при котором катализатор изменяет скорость химической реакции'],
'Каталитическое действие в химии - это процесс, при котором катализатор изменяет скорость химической реакции.'),
_buildQuestionCard(
context,
'Вопрос 9:',
'Что такое растворимость в химии?',
['Масса вещества, растворенного в единице объема растворителя', 'Количество вещества, растворенного в растворителе', 'Количество вещества, которое может раствориться в данном растворителе при определенной температуре и давлении', 'Способность вещества быть растворенным в воде'],
['Количество вещества, которое может раствориться в данном растворителе при определенной температуре и давлении'],
'Растворимость в химии - это количество вещества, которое может раствориться в данном растворителе при определенной температуре и давлении.'),
_buildQuestionCard(
context,
'Вопрос 10:',
'Что такое агрегатные состояния вещества в химии?',
['Различные виды молекулярного строения веществ', 'Формы, в которых может находиться вещество в зависимости от температуры и давления', 'Различные химические свойства вещества', 'Стадии химических реакций'],
['Формы, в которых может находиться вещество в зависимости от температуры и давления'],
'Агрегатные состояния вещества в химии - это формы, в которых может находиться вещество в зависимости от температуры и давления.'),
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
  runApp(Class11());
}
