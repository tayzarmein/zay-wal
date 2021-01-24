import 'package:flutter/material.dart';
import 'package:web/web_ui/home_page.dart';
import 'package:web/web_ui/official_store.dart';

class Titles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // textDirection: TextDirection.ltr,
        children: [
          FlatButton(
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()))
            },
            child: Text(
              'Home',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          FlatButton(
              onPressed: null,
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )),
          // Padding(padding: const EdgeInsets.fromLTRB(20, 20, 20, 20)),
          FlatButton(
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OfficialStores()))
            },
            child: Text(
              'Official Stores',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Text(
              'Promotions',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Text(
              'Just for you',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Text(
              'Delivery Info',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Text(
              'Payment Method',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Text(
              'Terms & Conditions',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
