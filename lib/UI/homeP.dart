import 'package:flutter/material.dart';
import 'dart:math';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _randomNumber = 0; // Переменная для хранения сгенерированного числа

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _generateRandomNumber() {
    setState(() {
      _randomNumber = Random().nextInt(1001); // Генерируем число от 0 до 1000
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Row(
              children: [
                SizedBox(
                  height: 200,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image(image: AssetImage('images/sheldon.jpg')),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  '   Шлдон Купер \n'
                      '   Мое любимое число это 73. 73 — это 21-е простое число. \n'
                      '   Написанное наоборот оно 37 — это 12-е простое число, и если написать его наоборот — 21 — это результат умножения семи и трёх,\n '
                      '  а также число 73, написанное в двоичной системе счисления является палиндромом: 1-0-0-1-0-0-1 \n',
                ),
              ],
            ),
            const Text(
              'Оцените это число',
            ),
            Text(
              'Число дня: $_randomNumber',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: _incrementCounter, child: const Icon(
                  Icons.thumb_up,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                )),
                TextButton(onPressed: _decrementCounter, child: Icon(
                  Icons.thumb_down,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                )),
              ],
            ),
            ElevatedButton(
              onPressed: _generateRandomNumber,
              child: Text('Сгенерировать новое число'),
            ),
          ],
        ),
      ),
    );
  }
}