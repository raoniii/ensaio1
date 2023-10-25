import 'package:ensaio1/app/pages/login_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(TestManagerApp());
}

class TestManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "teste",
      theme: ThemeData(useMaterial3: true),
      home: LoginPage(),
    );
  }
}
