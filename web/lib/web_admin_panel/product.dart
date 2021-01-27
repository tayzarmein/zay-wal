import 'package:flutter/material.dart';
import 'package:web/web_admin_panel/src/all_data_table.dart';
import 'package:web/web_admin_panel/src/page_number.dart';

class Product extends StatelessWidget {
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
                  'Product',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 700),
                FlatButton(
                  onPressed: () {},
                  child: Text('Add Product'),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          DataTable(columns: [
            DataColumn(
                label: Text('ID',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('SKU',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Name',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Type',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Status',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Price',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Quantity',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Action',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)))
          ], rows: [
            DataRow(cells: [
              DataCell(Text('163')),
              DataCell(Text('nklk')),
              DataCell(Text('Sunglasses')),
              DataCell(Text('simple')),
              DataCell(Text('Active')),
              DataCell(Text('100.00')),
              DataCell(Text('10')),
              DataCell(Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  IconButton(icon: Icon(Icons.delete), onPressed: () {})
                ],
              ))
            ]),
            DataRow(cells: [
              DataCell(Text('164')),
              DataCell(Text('aboc')),
              DataCell(Text('Denim Jacket')),
              DataCell(Text('simple')),
              DataCell(Text('Active')),
              DataCell(Text('150.00')),
              DataCell(Text('20')),
              DataCell(Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  IconButton(icon: Icon(Icons.delete), onPressed: () {})
                ],
              ))
            ]),
            DataRow(cells: [
              DataCell(Text('165')),
              DataCell(Text('adfa')),
              DataCell(Text('Royal Wing chair')),
              DataCell(Text('simple')),
              DataCell(Text('Active')),
              DataCell(Text('500.00')),
              DataCell(Text('15')),
              DataCell(Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  IconButton(icon: Icon(Icons.delete), onPressed: () {})
                ],
              ))
            ])
          ]),
          SizedBox(
            height: 40,
          ),
          PageNumber()
        ],
      ),
    );
  }
}
