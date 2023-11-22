import 'package:flutter/material.dart';
import 'package:mobile_inventory/models/product.dart';

class ItemDetailPage extends StatelessWidget {
  final Product product;

  const ItemDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Text('Name: ${product.fields.name}'),
            SizedBox(height: 10),
            Text('Price: ${product.fields.price}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Available Amounts: ${product.fields.amount}'),
          ],
        ),
      ),
    );
  }
}