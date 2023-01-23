import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var x = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Practise")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          print(x);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
