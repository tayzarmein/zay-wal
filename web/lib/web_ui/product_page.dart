import 'package:flutter/material.dart';
import 'package:web/web_ui/appBar_title.dart';
import 'package:web/web_ui/item.dart';
import 'package:web/web_ui/item_detail.dart';

class ProductPage extends StatefulWidget {
  ProductPage(this.myProductName);

  final String myProductName;

  @override
  _State createState() => _State();
}

class _State extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.favorite),
          Icon(Icons.more_vert),
          Icon(Icons.search),
          Titles()
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.1),
                child: Text(
                  'Slippers',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ),
              // Row(
              //   children: [Title()],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetail()));
                      },
                      child: ItemBox()),
                  ItemBox(),
                  ItemBox(),
                  ItemBox()
                ],
              ),
              Text('Shirts'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ItemBox(), ItemBox(), ItemBox(), ItemBox()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ItemBox(), ItemBox(), ItemBox(), ItemBox()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ItemBox(), ItemBox(), ItemBox(), ItemBox()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ItemBox(), ItemBox(), ItemBox(), ItemBox()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemBox(),
                  ItemBox(),
                  ItemBox(),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ItemDetail()));
                    },
                    child: ItemBox(),
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetail()));
                      },
                      child: ItemBox()),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
