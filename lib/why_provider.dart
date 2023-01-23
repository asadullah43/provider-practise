import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  WhyProvider({Key? key}) : super(key: key);

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  int x = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      x++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Practise")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            "${DateTime.now().hour} ${DateTime.now().minute} ${DateTime.now().second}",
            style: const TextStyle(fontSize: 50),
          ),
        ),
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
    );
  }
}
