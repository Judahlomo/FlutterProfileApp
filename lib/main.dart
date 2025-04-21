import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ThemeRoot());
}

class ThemeRoot extends StatefulWidget {
  const ThemeRoot({super.key});

  @override
  State<ThemeRoot> createState() => _ThemeRootState();
}

class _ThemeRootState extends State<ThemeRoot> {
  bool darkMode = false;

  void switchTheme() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterProfileApp',
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(toggleTheme: switchTheme),
    );
  }
}
