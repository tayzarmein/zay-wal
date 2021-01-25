import 'package:flutter/material.dart';
import 'package:web/web_admin_panel/category.dart';
import 'package:web/web_admin_panel/order.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({
    Key key,
  }) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  int selectedIndex = 0;

  var list = [
    Order(),
    Order(),
    Category(),
    Category(),
    Category(),
    Category(),
    Category(),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          labelType: NavigationRailLabelType.all,
          destinations: [
            NavigationRailDestination(
              icon: Icon(Icons.dashboard),
              label: Text('Dashboard'),
            ),
            NavigationRailDestination(
                icon: Icon(Icons.shopping_cart), label: Text('Orders')),
            NavigationRailDestination(
                icon: Icon(Icons.category), label: Text('Category')),
            NavigationRailDestination(
                icon: Icon(Icons.add_shopping_cart), label: Text('Products')),
            NavigationRailDestination(
                icon: Icon(Icons.people), label: Text('Customers')),
            NavigationRailDestination(
                icon: Icon(Icons.data_usage), label: Text('Report')),
            NavigationRailDestination(
                icon: Icon(Icons.integration_instructions),
                label: Text('Integrations'))
          ],
          selectedIndex: selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        Expanded(
            child: Container(
          // color: Colors.grey,
          child: Center(child: list[selectedIndex]),
        ))
      ],
    );
  }
}
