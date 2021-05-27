//import 'package:app/components/recentProduct.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:app/components/categories.dart';
import 'package:app/components/recentProduct.dart';
import 'package:app/components/productDetails.dart';

//import 'package:app/components/productDetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //image carousel
    Widget image_carousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/vegetable.jpg"),
          AssetImage("images/vegetable.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 100),
        indicatorBgPadding: 3.0,
        dotSize: 5.0,
        dotColor: Colors.blueAccent,
      ),
    );

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
              onPressed: null)
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Filter',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              //leading: Icon(
              //Icons.person,
              //color: Colors.blueAccent,
              //),
              //onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // },
            ),
            /*        ListTile(
              title: DropdownButton<Item>(
                hint: Text("Select item"),
                value: selectedUser,
                onChanged: (Item Value) {
                  setState(() {
                    selectedUser = Value;
                  });
                },
                items: users.map((Item user) {
                  return DropdownMenuItem<Item>(
                    value: user,
                    child: Row(
                      children: <Widget>[
                        user.icon,
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          user.name,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              leading: Text('SORT BY'),
            ),
           */
            //    Icon(
            //   Icons.person,
            // color: Colors.blueAccent,
            //  ),
            // onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            //   },

            ListTile(title: TextField(), leading: Text('SEARCH')),
            ListTile(title: TextField(), leading: Text('BRAND')),
            ListTile(
              title: Text('Logout'),
              leading: Icon(
                Icons.note,
                color: Colors.blueAccent,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
          ],
        ),
      ),
      body: Card(
        // child: Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //image_carousel
            image_carousel,

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),

            HorizontalList(),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Text(
                "Recent Products",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            // Product(),
          ],
        ),
      ),
    );
  }
}
