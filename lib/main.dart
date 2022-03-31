import 'package:flutter/material.dart';
import 'package:i_ran/screens/exercise_screen.dart';
import 'package:i_ran/screens/form_screen.dart';
import 'package:i_ran/screens/home_screen.dart';
import 'package:i_ran/utils/app_routes.dart';

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
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.red,
          secondary: Colors.yellow[100],
        ),
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontFamily: 'Minecraft',
            fontSize: 25,
          ),
          bodyText2:  TextStyle(
            fontFamily: 'Minecraft',
            fontSize: 15,
          ),         
          subtitle1:  TextStyle(
            fontFamily: 'Minecraft',
            fontSize: 18,
          ),         
        ),
        scaffoldBackgroundColor: Colors.yellow[100],
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (ctx) => HomeScreen(),
        AppRoutes.FORM: (ctx) => FormScreen(),
        AppRoutes.EXERCISE: (ctx) => ExerciseScreen(),
      },
    );
  }
}
