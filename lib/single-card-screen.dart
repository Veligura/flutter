import 'package:flutter/material.dart';

class SingleCard extends StatefulWidget {
  SingleCard({String front, String rear});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SingleCardState();
  }
}

class _SingleCardState extends State<SingleCard> {
  bool rear = false;
  void toggleCard() {
    setState(() {
      rear = !rear;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: toggleCard,
        child: Row(children: [
          Container(
            decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
                gradient: new LinearGradient(
                    colors: [
                      const Color(0xFF3366FF),
                      const Color(0xFF00CCFF),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp)),
            child: Container(
              width: MediaQuery.of(context).size.width - 90,
              alignment: Alignment.center,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
              child: Text(rear ? "Rear RearRearRearRearRearRearRearRearRearRear" : "Front",
             style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0),
              )),
            ),
          
        ]));
  }
}