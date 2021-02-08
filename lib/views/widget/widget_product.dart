import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetProduct {
  cardProductWidth(Widget child) {
    return Card(
      child: child,
    );
  }

  cardProductHeight({url, String text}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Image.network(
              url,
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}
