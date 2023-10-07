import 'package:flutter/material.dart';

import 'caculator_app.dart';

void main() {
  runApp(const myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.tealAccent,
      ),

      home:Caculator(),



    );
  }
}

