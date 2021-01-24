import 'package:flutter/material.dart';

class AllDataTable extends StatelessWidget {
  const AllDataTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
          label: Text(
            'ID',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
            label: Text(
          'Name',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
        DataColumn(
            label: Text('Position',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
        DataColumn(
            label: Text('Status',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
        DataColumn(
            label: Text('No of Products',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
        DataColumn(
            label: Text('Actions',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Text('176')),
            DataCell(Text('Yoga')),
            DataCell(Text('3')),
            DataCell(Text('Active')),
            DataCell(Text('3')),
            DataCell(Row(
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                IconButton(icon: Icon(Icons.delete), onPressed: () {})
              ],
            ))
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('175')),
            DataCell(Text('Fitness World')),
            DataCell(Text('3')),
            DataCell(Text('Active')),
            DataCell(Text('3')),
            DataCell(Row(
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                IconButton(icon: Icon(Icons.delete), onPressed: () {})
              ],
            ))
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('174')),
            DataCell(Text("Men's Collection @@@@@@@@@@")),
            DataCell(Text('3')),
            DataCell(Text('Active')),
            DataCell(Text('3')),
            DataCell(Row(
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton(icon: Icon(Icons.delete), onPressed: () {})
              ],
            ))
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('174')),
            DataCell(Text("Men's Collection @@@@@@@@@@")),
            DataCell(Text('3')),
            DataCell(Text('Active')),
            DataCell(Text('3')),
            DataCell(Row(
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                IconButton(icon: Icon(Icons.delete), onPressed: () {})
              ],
            ))
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('174')),
            DataCell(Text("Men's Collection @@@@@@@@@@")),
            DataCell(Text('3')),
            DataCell(Text('Active')),
            DataCell(Text('2')),
            DataCell(Row(
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                IconButton(icon: Icon(Icons.delete), onPressed: () {})
              ],
            ))
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('174')),
            DataCell(Text("Men's Collection @@@@@@@@@@")),
            DataCell(Text('3')),
            DataCell(Text('Active')),
            DataCell(Text('1')),
            DataCell(Row(
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                IconButton(icon: Icon(Icons.delete), onPressed: () {})
              ],
            ))
          ],
        ),
      ],
    );
  }
}
