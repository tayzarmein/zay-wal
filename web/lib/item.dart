import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border.all(
            color: Colors.yellow,
          ),
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'graphic/slipper.jpg',
            width: 150,
            height: 150,
          ),
          // Spacer(flex: 1),
          SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.1),
              ),
              Text(
                'Women Slipper',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Spacer(flex: 1),
              Text(
                'K1,000.00',
                style: TextStyle(fontSize: 15, color: Colors.orange),
              ),
              // Spacer(),
            ],
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
