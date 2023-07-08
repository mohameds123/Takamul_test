import 'package:flutter/material.dart';
import 'package:takamul_test/screens/add_new_vision.dart';
import 'package:takamul_test/screens/home_empty.dart';
import 'package:takamul_test/screens/home_screen.dart';
import 'package:takamul_test/screens/login_screen.dart';
import 'package:takamul_test/screens/show_new_vision.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}
