// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:web/web_admin_panel/src/navigation_drawer.dart';
import 'package:web/web_admin_panel/src/page_number.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 600),
                  child: Text(
                    'Recent Order',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  'Date',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                  label: Text(
                'Name',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text('Ship To',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Payment Method',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Amount',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('16 Mar 2019')),
                  DataCell(Text('Elvis Presley')),
                  DataCell(Text('Tupelo, MS')),
                  DataCell(Text('Cash On Delivery')),
                  DataCell(Text('312.44')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('16 Mar 2019')),
                  DataCell(Text('Paul McCartney')),
                  DataCell(Text('London, UK')),
                  DataCell(Text('Cash On Delivery')),
                  DataCell(Text('322.456')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('16 Mar 2019')),
                  DataCell(Text('Elvis Presley')),
                  DataCell(Text('Tupelo, MS')),
                  DataCell(Text('Cash On Delivery')),
                  DataCell(Text('312.44')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('16 Mar 2019')),
                  DataCell(Text('Paul McCartney')),
                  DataCell(Text('London, UK')),
                  DataCell(Text('Cash On Delivery')),
                  DataCell(Text('322.456')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('16 Mar 2019')),
                  DataCell(Text('Paul McCartney')),
                  DataCell(Text('London, UK')),
                  DataCell(Text('Cash On Delivery')),
                  DataCell(Text('322.456')),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          PageNumber(),
          // Row(
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(left: 70),
          //       child: TextButton(
          //           onPressed: () {}, child: Text('See More Orders')),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
