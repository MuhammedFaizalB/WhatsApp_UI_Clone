import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/homescreen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(primaryColor: Colors.green[800]),
      home: const HomeScreen(),
    );
  }
}
