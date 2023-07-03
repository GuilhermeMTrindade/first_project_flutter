import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarefas'),
          ),
          body: Container(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      height: 140,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(250, 255, 255, 255),
                          borderRadius: BorderRadius.circular(5)),
                      height: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.network('https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png'),
                          height: 100,
                          width: 75,
                        ),
                        Text('Aprender Flutter', style: TextStyle(fontSize: 18)),
                        ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_drop_up))
                      ]),
                    ),
                  ],
                ),
                color: Color.fromARGB(200, 208, 221, 237),
          )
    )
    );
  }
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

