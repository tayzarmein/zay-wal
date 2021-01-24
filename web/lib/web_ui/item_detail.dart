import 'package:flutter/material.dart';
import 'package:web/web_ui/appBar_title.dart';

class ItemDetail extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'graphic/slipper.jpg',
                width: 400,
                height: 600,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Shwe Kaw Zawl Slipper',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Ks - 1000',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      CartCounter(),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FlatButton(
                            color: Colors.blue,
                            onPressed: () {},
                            child: Text('Add To Cart')),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLineButtom(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: TextStyle(fontSize: 15),
          ),
        ),
        buildOutLineButtom(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            })
      ],
    );
  }

  SizedBox buildOutLineButtom({IconData icon, Function press}) {
    return SizedBox(
      width: 30,
      height: 22,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
