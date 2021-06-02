import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;
  final product_detail_brand;
  final product_detail_Camera;
  final product_detail_RAM;
  final product_detail_Storage;

  Cart({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_price,
    this.product_detail_old_price,
    this.product_detail_brand,
    this.product_detail_Camera,
    this.product_detail_RAM,
    this.product_detail_Storage,
  });

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text(widget.product_detail_name),
              )
            ],
          ),
        ),
      ),
    );
  }
}
