import 'package:flutter/material.dart';
import 'package:myapp/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}
