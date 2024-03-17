import 'package:flutter/material.dart';
import 'package:amogus/UI/homeP.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Клуб любителей чисел',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Клуб любителей чисел'),
      debugShowCheckedModeBanner: false,
    );
  }
}