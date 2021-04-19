import 'package:flutter/material.dart';
import 'package:puan/ui/screens/home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Puan",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 255, 255, 255)
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
