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
  var heading = '\$2300 per month';
  var subheading = '2 bed, 1 bath, 1300 sqft';
  var cardImage =
      const NetworkImage('https://source.unsplash.com/random/800x600?house');
  var supportingText =
      'Beautiful home to rent, recently refurbished with modern appliances...';
  List<BirthdayPerson> birthdays = BirthdayPerson.getProducts();
  String birthdaysLength = BirthdayPerson.getProducts().length.toString();
  List<Widget> widgets = BirthdayPerson.getProducts()
      .map((x) => Card(
          elevation: 4.0,
          child: Column(
            children: [
              ListTile(
                title: Text(x.name),
                subtitle: Text(x.description),
                trailing: const Icon(Icons.favorite_outline),
              ),
              Container(
                height: 200.0,
                child: Ink.image(
                  image: NetworkImage(x.image),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Text(x.description),
              ),
              ButtonBar(
                children: [
                  TextButton(
                    child: const Text('CONTACT AGENT'),
                    onPressed: () {/* ... */},
                  ),
                  TextButton(
                    child: const Text('LEARN MORE'),
                    onPressed: () {/* ... */},
                  )
                ],
              )
            ],
          )))
      .toList();

  _changeText() {
    setState(() {
      widgets = [];
      birthdaysLength = widgets.length.toString();
    });
  }

  _getAll() {
    setState(() {
      widgets = BirthdayPerson.getProducts()
          .map((x) => Card(
              elevation: 4.0,
              child: Column(
                children: [
                  ListTile(
                    title: Text(x.name),
                    subtitle: Text(x.description),
                    trailing: const Icon(Icons.favorite_outline),
                  ),
                  Container(
                    height: 100.0,
                    child: Ink.image(
                      image: NetworkImage(x.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text(x.description),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        child: const Text('CONTACT AGENT'),
                        onPressed: () {/* ... */},
                      ),
                      TextButton(
                        child: const Text('LEARN MORE'),
                        onPressed: () {/* ... */},
                      )
                    ],
                  )
                ],
              )))
          .toList();
      birthdaysLength = widgets.length.toString();
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
            body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...widgets,
                    ElevatedButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: _changeText,
                        child: Text('Remove all items in state')),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: _getAll,
                        child: Text('Bring back items'))
                  ]),
            )));
  }
}
