// import 'dart:html';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     icon: Icon(Icons.menu), onPressed: () => {print('dummy')}),
        title: Text('Dashboard'),
        // actions: [IconButton(icon: Icon(Icons.add_alert), onPressed: null)],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text('Header')),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Orders'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Customers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.data_usage),
              title: Text('Reports'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.integration_instructions),
              title: Text('Integrations'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.0, top: 20),
                child: Text(
                  'Recent Order',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
              // Padding(padding: EdgeInsets.lerp(a, b, t)
            ],
          ),
          Row(
            children: [
              Container(
                // decoration: BoxDecoration(
                //   // border: Border.all(color: Colors.brown),
                //   borderRadius: BorderRadius.circular(8.0),
                // ),
                width: 1000,
                height: 150,
                // color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('16 Mar,2019'),
                        Text('16 Mar,2019'),
                        Text('16 Mar,2019')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('Elvis Presley'),
                        Text('Paul McCartney'),
                        Text('Tom Scholz')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Ship To',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text('Tupelo, MS'),
                        Text('London, UK'),
                        Text('Boston, MA')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Payment Method',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text('Cash On Delivery'),
                        Text('Cash On Delivery'),
                        Text('Cash On Delivery')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Sale Amount',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('312.44'),
                        Text('866.99'),
                        Text('100.81')
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: TextButton(
                    onPressed: () {}, child: Text('See More Orders')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
