import 'package:flutter/material.dart';

class NotificationsViewAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Move On Tally'),
    );
  }
}

class NotificationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Notifications View'),
      ),
    );
  }
}
