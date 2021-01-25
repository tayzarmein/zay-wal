import 'package:flutter/material.dart';
import 'src/all_data_table.dart';
import 'src/page_number.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Category',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 700),
                FlatButton(
                  onPressed: () {},
                  child: Text('Add Category'),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          AllDataTable(),
          SizedBox(
            height: 40,
          ),
          PageNumber()
        ],
      ),
    );
  }
}
