import 'package:flutter/material.dart';

class Products extends StatelessWidget {
 final List<String> products = [];

 Products(products);
 
  @override
  Widget build(BuildContext context) {
    return Column(
        children: products
            .map((title) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(title)
                    ],
                  ),
                ))
            .toList());
  }
}
