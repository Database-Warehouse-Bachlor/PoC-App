import 'dart:collection';

import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: "Daniel Iversen", text: "Why do we live on the earth?"),
    Quote(author: "Sverre Lofthus", text: "STAVANGGGGERRRR"),
    Quote(author: "Petter Lintoft", text: "I likeylikey"),
    Quote(author: "Sigurd Brustad", text: "MIMIMIMIMI")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awsome quote"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => Text("${quote.text} - ${quote.author}")).toList(),
      ),
    );
  }
}

