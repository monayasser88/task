import 'package:flutter/material.dart';
import 'package:task/screens/home_screen.dart';

class App_Root extends StatelessWidget {
  const App_Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
