import 'package:flutter/material.dart';

class MyStateFull extends StatefulWidget {
  const MyStateFull({Key? key}) : super(key: key);

  @override
  State<MyStateFull> createState() => _MyStateFullState();
}

class _MyStateFullState extends State<MyStateFull> {
  int x = 8;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("build");
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Practise")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(DateTime.now().toString()),
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
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
