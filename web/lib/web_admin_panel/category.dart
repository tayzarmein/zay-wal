import 'package:flutter/material.dart';
import 'src/all_data_table.dart';
import 'src/page_number.dart';

class NewCategoryDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text("Add a Category"),
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Name',
              labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Position'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Status'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'No of Products'),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel')),
            SizedBox(
              width: 10,
            ),
            FlatButton(
                color: Colors.blue, onPressed: () {}, child: Text('Save'))
          ],
        )
      ],
    );
  }
}

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Future _onPressAddCategoryBtn() async {
    showDialog<NewCategoryDialog>(
        context: context, builder: (context) => NewCategoryDialog());
  }

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
                  onPressed: _onPressAddCategoryBtn,
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
