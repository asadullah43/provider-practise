import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  int x = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Practise")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: Center(
            child: Text(
              x.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          // ignore: avoid_print
          print(x);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
