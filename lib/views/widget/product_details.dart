import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Image.network(
            'https://images.lojanike.com.br/500x500/produto/304823_2732610_20201203113802.jpg',
            width: 300,
            height: 300,
          ),
        ),
        Expanded(
          child: Text(
            'O TÊNIS DE MARATONA MAIS RÁPIDO\nFICOU AINDA MAIS VELOZ.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 6,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    "https://images.lojanike.com.br/500x500/produto/304823_2732632_20201203113803.jpg"),
                color: Colors.teal[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    "https://images.lojanike.com.br/500x500/produto/304823_2732654_20201203113804.jpg"),
                color: Colors.teal[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    "https://images.lojanike.com.br/1024x1024/produto/304823_2732676_20201203113805.jpg"),
                color: Colors.teal[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    "https://images.lojanike.com.br/1024x1024/produto/304823_2732742_20201203113809.jpg"),
                color: Colors.teal[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    "https://images.lojanike.com.br/1024x1024/produto/304823_2732698_20201203113806.jpg"),
                color: Colors.teal[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    "https://images.lojanike.com.br/1024x1024/produto/304823_2732720_20201203113808.jpg"),
                color: Colors.teal[600],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
