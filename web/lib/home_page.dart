import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // width: 250,
      // height: 250,
      body: Row(
        children: [
          Text(
            'Home Page',
            style: TextStyle(fontSize: 20, color: Colors.black),
          )
        ],
      ),
    );
  }
}
