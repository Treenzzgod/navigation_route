import 'dart:io';

import 'package:flutter/material.dart';
import 'package:navigation_route/models/Item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        weight: 5,
        image: ('assets/images/gula.jpg')),
    Item(
        name: 'Salt',
        price: 2000,
        weight: 1,
        image: ('assets/images/garam.jpg')),
  ];

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping list'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image(
                          image: AssetImage(item.image),
                        ),
                      ),
                      Expanded(
                        child: Text(item.name),
                      ),
                      Expanded(
                        child: Text(item.price.toString(),
                            textAlign: TextAlign.end),
                      ),
                      Expanded(
                        child: Text(item.weight.toString(),
                            textAlign: TextAlign.end),
                      ),
                      SizedBox()
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
