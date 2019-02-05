import 'package:flutter/material.dart';
import 'dart:collection';
import './const.dart';
import './single-card.dart';

class SingleCardScreen extends StatefulWidget {
  final Queue<MapEntry<String, String>> wordQueue = Queue.from(words.entries);
  @override
  State<StatefulWidget> createState() {
    print(wordQueue);
    // TODO: implement createState
    return _SingleCardState();
  }
}

class _SingleCardState extends State<SingleCardScreen> {
  next() {
    setState(() {
      widget.wordQueue.removeFirst();
    });
  }

  @override
  Widget build(BuildContext context) {
    final MapEntry<String, String> value = widget.wordQueue.first;
    final String front = value.key;
    final String rear = value.value;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SingleCard(
          front: front,
          rear: rear,
        ),
        Container(
          child: OutlineButton(
            onPressed: next,
            child: Text("Next"),
          ),
          margin: EdgeInsets.only(top: 50),
        )
      ],
    );
  }
}
