import 'package:flutter/material.dart';

class ProductCardPopup extends StatelessWidget {
  final String productName;
  final String productDescription;
  final double productPrice;

  ProductCardPopup({
    required this.productName,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              iconPadding: EdgeInsets.all(25),
              // title: Text(productName),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text('Кнопка 1'),
                        onPressed: () {
                          // Действие для кнопки 1
                        },
                      )
                    ],
                  ),
                  Stack(children: [
                    Image.asset('assets/images/image.png'),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: TextButton(
                        child: Text('Нажми меня'),
                        onPressed: () {
                          // Действие при нажатии на кнопку
                        },
                      ),
                    ),
                  ]),
                  Text('$productDescription'),
                  Text('Description: $productDescription'),
                  SizedBox(height: 10),
                  Text('Price: $productPrice'),
                ],
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text('Кнопка 2'),
                      onPressed: () {
                        // Действие для кнопки 2
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
      child: Card(
        child: ListTile(
          title: Text(productName),
          subtitle: Text('Price: $productPrice'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Card Popup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Card Popup'),
        ),
        body: Center(
          child: ProductCardPopup(
            productName: 'Рыба с овощами и рисом',
            productDescription: 'Рыба мапи',
            productPrice: 9.99,
          ),
        ),
      ),
    );
  }
}
