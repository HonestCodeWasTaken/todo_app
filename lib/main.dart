// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/models/birthday_person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final birthdays = BirthdayPerson.getProducts();
  final birthdaysLength = BirthdayPerson.getProducts().length.toString();
  List<Widget> widgets =
      BirthdayPerson.getProducts().map((name) => Text(name.name)).toList();

  _changeText() {
    setState(() {
      widgets = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white70,
              title: Text('$birthdaysLength birthdays today'),
            ),
            body: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...widgets,
                    TextButton(onPressed: _changeText, child: Text('sdasad'))
                  ]),
            )));
  }
}
