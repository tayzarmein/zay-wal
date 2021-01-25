// import 'dart:html';

import 'package:flutter/material.dart';

import 'src/navigation_drawer.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Admin Panel'),
        ),
        body: NavigationDrawer());
  }
}
