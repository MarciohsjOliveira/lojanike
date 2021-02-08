import 'package:flutter/material.dart';
import 'package:lojanike/views/widget/product_details.dart';
import 'package:lojanike/views/widget/widget_product.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> with WidgetProduct {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Produtos',
          style: TextStyle(letterSpacing: 2, color: Colors.white),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20),
              child: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
              length: 3,
              child: TabBar(
                indicatorColor: Colors.red,
                labelColor: Colors.black,
                labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                tabs: [
                  Tab(
                    child: Text(
                      'Lançamento',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Ofertas',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Outlet',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, top: 25),
              alignment: Alignment.topLeft,
              child: Text(
                'Destaque',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cardProductWidth(
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ProductDetails())),
                      child: Image.network(
                        'https://images.lojanike.com.br/500x500/produto/304823_2732610_20201203113802.jpg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  cardProductWidth(
                    Image.network(
                      'https://images.lojanike.com.br/500x500/produto/287145_2770288_20210112174649.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  cardProductWidth(
                    Image.network(
                      'https://images.lojanike.com.br/500x500/produto/291007_2801783_20210128113610.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  cardProductWidth(
                    Image.network(
                      'https://images.lojanike.com.br/500x500/produto/274176_2555766_20200921174736.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, top: 25),
              alignment: Alignment.topLeft,
              child: Text(
                'Promoções',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 500,
              width: 350,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Hero(
                    tag: 'one',
                    child: cardProductHeight(
                        url:
                            'https://images.lojanike.com.br/500x500/produto/293069_2721076_20201124144501.jpg',
                        text:
                            'Nike Air Zoom SuperRep 2 Masculino\n\nR\$649,99'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  cardProductHeight(
                      url:
                          'https://images.lojanike.com.br/860x860/produto/294834_2765359_20210106100344.jpg',
                      text:
                          'Camiseta Nike Los Angeles Lakers Courtside Chrome Masculina\n\nR\$169,99'),
                  SizedBox(
                    height: 20,
                  ),
                  cardProductHeight(
                      url:
                          'https://images.lojanike.com.br/500x500/produto/272856_2627799_20201020100617.jpg',
                      text: 'Tênis Air Jordan XXXV Masculino\n\nR\$899,99'),
                  SizedBox(
                    height: 20,
                  ),
                  cardProductHeight(
                      url:
                          'https://images.lojanike.com.br/860x860/produto/255606_2181980_20200521151908.png',
                      text:
                          'Boné Jordan Jumpmans Classics Pro Unissex\n\nR\$129,99'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
