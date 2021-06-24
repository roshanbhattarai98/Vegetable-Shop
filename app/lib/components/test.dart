import 'package:flutter/material.dart';
import 'package:app/components/cart.dart';
//import 'package:provider/provider.dart'

class Test extends StatefulWidget {
  final product_details_name;
  final product_details_picture;
  final product_details_old_price;
  final product_details_price;
  final product_details_brand;
  final product_details_Camera;
  final product_details_RAM;
  final product_details_Storage;

  Test({
    this.product_details_name,
    this.product_details_picture,
    this.product_details_price,
    this.product_details_old_price,
    this.product_details_brand,
    this.product_details_Camera,
    this.product_details_RAM,
    this.product_details_Storage,
  });

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var counter = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce"),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          //    height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .3,
                child: Image.asset(
                  widget.product_details_picture,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            offset: Offset(0, -4),
                            blurRadius: 8,
                          )
                        ]),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.product_details_name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 30,
                              right: 30,
                            ),
                            child: Row(
                              children: [
                                Text("${widget.product_details_price}"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("/ 1 Kg"),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      counter--;
                                    });
                                    //   counter--;
                                  },
                                  //    borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    //    padding: const EdgeInsets.symmetric(
                                    //      vertical: 10, horizontal: 30),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(
                                    "$counter",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      counter++;
                                    });
                                    // counter++;
                                  },
                                  //   borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    //     padding: const EdgeInsets.symmetric(
                                    //       vertical: 10, horizontal: 30),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //    Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.07),
                                      offset: Offset(0, -3),
                                      blurRadius: 12,
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Total:"),
                                        Text(
                                            "${widget.product_details_price * counter}"),
                                      ],
                                    ),
                                  ),
                                  Material(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                    child: InkWell(
                                      onTap: () {
                                        //  print("Click");

                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            //passing value of product details
                                            builder: (context) => Cart(
                                              product_details_Cameras: Test(),
                                              //
                                            ),
                                          ),
                                        );
                                      },
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 30),
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text("Add to Cart"),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                  child: Text(
                    "Similar Products",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )),
              //  Similar_Product(),
            ],
          ),
        ),
      ),
      // ),
    );
    /*     ListView(
        children: <Widget>[
          Container(
              height: 250,
              child: GridTile(
                child: Container(
                    color: Colors.white,
                    child: Image.asset(widget.product_details_picture)),
                footer: new Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      widget.product_details_name,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      "${widget.product_details_price}",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    title: Text('${widget.product_details_old_price}'),
                  ),
                ),
              )),
          Divider(),
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
              child: Text(
                "Product Details",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
          new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                    child: Text(
                      "Product brand:",
                      style: TextStyle(fontSize: 15),
                    )),
                Padding(
                  padding: const EdgeInsets.all(5),
                ),
                Text(widget.product_details_brand)
              ]),
          new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                    child: Text(
                      "Product Storage:",
                      style: TextStyle(fontSize: 15),
                    )),
                Padding(
                  padding: const EdgeInsets.all(5),
                ),
                Text(widget.product_details_Storage)
              ]),
          new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                    child: Text(
                      "Product RAM:",
                      style: TextStyle(fontSize: 15),
                    )),
                Padding(
                  padding: const EdgeInsets.all(5),
                ),
                Text(widget.product_details_RAM)
              ]),
          new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                    child: Text(
                      "Product Camera:",
                      style: TextStyle(fontSize: 15),
                    )),
                Padding(
                  padding: const EdgeInsets.all(5),
                ),
                Text(widget.product_details_Camera)
              ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 5, 80, 5),
            child: RaisedButton(
              onPressed: () {},
              child: const Text('Buy Now',
                  style: TextStyle(
                    fontSize: 20,
                  )),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 5,
            ),
          ),
          Divider(),
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
              child: Text(
                "Similar Products",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
          Container(
            height: 360,
            child: Similar_Product(),
          ), */
    //   ],
    // ),
    // );
  }
}

  /*class Similar_Product extends StatefulWidget {
  @override
  _Similar_ProductState createState() => _Similar_ProductState();
}

class _Similar_ProductState extends State<Similar_Product> {
  var product_list = [
    {
      "name": "Mobile",
      "picture": "images/vegatable.jpg",
      "old_price": 2000,
      "price": 1500,
      "brand": "Samsung",
      "Camera": "24MP",
      "RAM": "4GB",
      "Storage": "64GB",
    },
    {
      "name": "Laptop",
      "picture": "images/vegetable.jpg",
      "old_price": 2000,
      "price": 1500,
      "brand": "DELL-i3, 10th gen",
      "Camera": "4MP",
      "RAM": "4GB",
      "Storage": "128GB SSD",
    },
    {
      "name": "Mobile",
      "picture": "images/vegetable.jpg",
      "old_price": 2000,
      "price": 1500,
      "brand": "Samsung",
      "Camera": "24MP",
      "RAM": "4GB",
      "Storage": "64GB",
    },
    {
      "name": "Laptop",
      "picture": "images/vegetable.jpg",
      "old_price": 2000,
      "price": 1500,
      "brand": "DELL-i3, 10th gen",
      "Camera": "4MP",
      "RAM": "4GB",
      "Storage": "128GB SSD",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: product_list.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Similar_Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
              prod_brand: product_list[index]['brand'],
              prod_Camera: product_list[index]['Camera'],
              prod_RAM: product_list[index]['RAM'],
              prod_Storage: product_list[index]['Storage'],
            );
          }),
    );
  }
}
//Similar Product Section

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_brand;
  final prod_Camera;
  final prod_RAM;
  final prod_Storage;

  Similar_Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
    this.prod_brand,
    this.prod_Camera,
    this.prod_RAM,
    this.prod_Storage,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GridTile(
        footer: Container(
          height: 60,
          color: Colors.white38,
          child: ListTile(
              leading: Text(
                prod_name,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "\$$prod_old_price",
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              title: Text(
                "\$$prod_price",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      //passing value of product details
                      builder: (context) => Test(
                            product_details_name: prod_name,
                            product_details_picture: prod_picture,
                            product_details_old_price: prod_old_price,
                            product_details_price: prod_price,
                            product_details_Camera: prod_Camera,
                            product_details_RAM: prod_RAM,
                            product_details_Storage: prod_Storage,
                            product_details_brand: prod_brand,
                          )),
                );
              }),
        ),
        child: Image.asset(prod_picture, fit: BoxFit.cover),
      ),
    );
  }
}*/
