import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.blue,
                height: 300,
                width: 300,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.lightGreen,
              ),
              Positioned(
                top: 20,
                bottom: 20,
                left: 20,
                right: 20,
                child: Container(
                  color: Colors.deepPurple,
                  height: 200,
                  width: 200,
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
