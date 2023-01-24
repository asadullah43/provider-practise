import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practise/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Practise")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: Center(
              child: Consumer<CountProvider>(builder: (context, value, child) {
            print('only this');
            return Text(
              value.count.toString(),
              style: const TextStyle(fontSize: 50),
            );
          })),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
