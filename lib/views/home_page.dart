import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojanike/views/product.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            'images/home.jpg',
          ),
          Image.network(
              'https://media.giphy.com/media/QGvWtguQVLTRS/giphy.gif'),
          SizedBox(
            height: 80,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Product()));
                },
                child: Text(
                  'Entre',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
