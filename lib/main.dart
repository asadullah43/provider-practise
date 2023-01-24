import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practise/provider/count_provider.dart';
import 'package:provider_practise/provider/example_one_provider.dart';
import 'package:provider_practise/screen/example_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CountProvider>(create: (_) => CountProvider()),
          ChangeNotifierProvider<ExampleOneProvider>(
              create: (_) => ExampleOneProvider()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ExampleOneScreen(),
        ));
  }
}
