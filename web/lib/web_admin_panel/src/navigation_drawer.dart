import 'package:flutter/material.dart';
import 'package:web/web_admin_panel/category.dart';
import 'package:web/web_admin_panel/dashboard.dart';
import 'package:web/web_ui/home_page.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Text('Header')),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
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
            leading: Icon(Icons.category),
            title: Text('Categories'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Category()));
            },
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text('Products'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Category()));
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
    );
  }
}
