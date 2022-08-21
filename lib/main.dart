import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: const Color(0xFF5682a3),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFe7ebf0),
        ),
      ),
      home: const Homepage(),
    );
  }
}
