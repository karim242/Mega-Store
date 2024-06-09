import 'package:flutter/material.dart';
import 'package:technomasr_tasks/feature/home/view/root_view.dart';
import 'package:technomasr_tasks/feature/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        home: const RootView());
  }
}
