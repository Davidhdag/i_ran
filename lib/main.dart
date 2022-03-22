import 'package:flutter/material.dart';
import 'package:i_ran/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final ThemeData tema = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I ran',
      theme: ThemeData(
        colorScheme: tema.colorScheme
            .copyWith(primary: Colors.red, secondary: Colors.yellow[100]),
        fontFamily: 'Minecraft',
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
