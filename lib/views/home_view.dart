import 'package:flutter/material.dart';
import 'package:move_on_tally/models/page_list_model.dart';
import 'package:move_on_tally/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  final _icons = List<IconData>.unmodifiable([
    Icons.home,
    Icons.notifications,
    Icons.settings,
    Icons.portrait,
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Move On Tally'),
      ),
      // drawer: DrawerMenu(),
      body: Container(
          child: Column(
        children: <Widget>[
          Provider.of<ViewList>(context, listen: true).selectedView,
        ],
      )),
      bottomNavigationBar: BottomNavBar(
        icons: _icons,
      ),
    );
  }
}
