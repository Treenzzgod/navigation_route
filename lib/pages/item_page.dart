import 'package:flutter/material.dart';

import '../models/Item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping list'),
      ),
      body: pageview(item: item),
    );
  }
}

class pageview extends StatelessWidget {
  const pageview({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    final double headerTop = MediaQuery.of(context).size.height * 0.45;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: headerTop,
                    child: Image.asset(item.image),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.name,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30),
                                  ),
                                  Text(
                                    item.weight.toString() + ' KG ',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                item.price.toString(),
                                style: TextStyle(color: Colors.red[600]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Produk PT.SENYUMMU MANIS',
                                style: TextStyle(color: Colors.green[600]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    //     child: Row(
    //       Container(
    //         child: Center(
    //           child: Column(
    //             children: [
    //               Text(item.name +
    //                   ' with ' +
    //                   item.price.toString() +
    //                   ' and weight ' +
    //                   item.weight.toString() +
    //                   ' kg '),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    // ],
  }
}
