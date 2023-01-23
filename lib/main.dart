import 'package:flutter/material.dart';
import 'package:provider_practise/home_screen.dart';
import 'package:provider_practise/state_full.dart';
import 'package:provider_practise/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WhyProvider(),
    );
  }
}
