import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final product_details_names;
  final product_details_pictures;
  final product_details_old_prices;
  final product_details_prices;
  final product_details_brands;
  final product_details_Cameras;
  final product_details_RAMs;
  final product_details_Storages;

  Cart({
    this.product_details_names,
    this.product_details_pictures,
    this.product_details_prices,
    this.product_details_old_prices,
    this.product_details_brands,
    this.product_details_Cameras,
    this.product_details_RAMs,
    this.product_details_Storages,
  });

  //const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy Tarkari"),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    //passing value of product details
                    builder: (context) => Cart()));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ListTile(
            leading: Text("${widget.product_details_prices}"),
          ),
        ),
      ),
    );
  }
}
