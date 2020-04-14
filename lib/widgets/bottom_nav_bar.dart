import 'package:flutter/material.dart';
import 'package:move_on_tally/models/page_list_model.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  final List<IconData> icons;

  BottomNavBar({@required this.icons}) : assert(icons != null);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<BottomNavigationBarItem> bottomNavBarItems =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('Home'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      title: Text('Notifications'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text('Settings'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.portrait),
      title: Text('Profile'),
    ),
  ];

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        items: bottomNavBarItems,
        currentIndex: Provider.of<ViewList>(context, listen: true).index,
        elevation: 2,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey[300],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          Provider.of<ViewList>(context, listen: false).updateView(index);
        },
      );
}

// Container(
//       height: 40,
//       width: 400,
//       color: Colors.grey[300],
//       child: ListView.separated(
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) => Icon(widget.icons[index]),
//           separatorBuilder: (context, _) => SizedBox(width: 20),
//           itemCount: widget.icons.length),
//     );
