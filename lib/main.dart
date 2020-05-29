import 'package:flutter/material.dart';
import 'package:flutter_demo/random_word_pairs.dart';

// Main entry point to the application, runApp receives a widget
void main() => runApp(DemoApp());

// This is the main widget the whole app runs on.
// Every flutter app needs a Material- (Android) or CupertinoApp (iOS) widget as root widget.
class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This widget is the root of your application.
    return MaterialApp(
      title: 'WordPair Generator (Flutter Demo)',
      // This is basic theme for the application.
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // In this line we reference the home widget of our app
      home: RandomWordPairs(),
    );
  }
}
