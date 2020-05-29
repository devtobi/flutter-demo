import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordPairs extends StatefulWidget {
  @override
  RandomWordPairsState createState() => RandomWordPairsState();
}

class RandomWordPairsState extends State<RandomWordPairs> {
  // These variables are part of the state of the widget and can change throughout the lifecycle
  final _pairs = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WordPair Generator (Flutter Demo)'),
      ),
      body: _buildPairsList(),
    );
  }

  // Helper function that uses a ListView.builder to create WordPairs or dividers
  Widget _buildPairsList() {
    //ListView.builder without a given itemCount calls the builder indefinitely
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ _buildListItem,
    );
  }

  // Helper function that gets executed by the ListView.builder
  Widget _buildListItem(BuildContext context, int i) {
    if (i.isOdd) return Divider();
    final index = i ~/ 2; //divide and cast to int
    //generate 10 new WordPairs if already loop through all of them
    if (index >= _pairs.length) {
      //here the state of the
      _pairs.addAll(generateWordPairs().take(10));
    }
    return _buildPair(_pairs[index]);
  }

  // Helper function to create a ListItem, which does in this case contain a WordPair
  Widget _buildPair(WordPair pair) {
    return ListTile(
      title: Text(pair.asPascalCase, style: _biggerFont),
    );
  }
}
