import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            cateogory: 'Categories1',
          ),
          Category(
            cateogory: 'Categories2',
          ),
          Category(
            cateogory: 'Categories3',
          ),
          Category(
            cateogory: 'Categories4',
          ),
          Category(
            cateogory: 'Categories5',
          ),
          Category(
            cateogory: 'Categories6',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String cateogory;

  Category({
    required this.cateogory,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 120,
        child: ListTile(
          onTap: () {},

          title: Text(cateogory),
          //Container(
          //alignment: Alignment.topCenter,
          // child: Text(cateogory),

          //),
        ),
      ),
    );
  }
}
