import 'package:flutter/material.dart';
import 'package:move_on_tally/views/notifications_view.dart';
import 'package:move_on_tally/views/profile_view.dart';
import 'package:move_on_tally/views/search_view.dart';
import 'package:move_on_tally/views/settings_view.dart';

class ViewList extends ChangeNotifier {
  List<Widget> _pages = [
    SearchView(),
    NotificationsView(),
    SettingsView(),
    ProfileView(),
  ];

  List<Widget> _appBars = [
    SearchViewAppBar(),
    NotificationsViewAppBar(),
    SettingsViewAppBar(),
    ProfileViewAppBar(),
  ];

  int _pageIndex = 0;
  int get index => _pageIndex;
  PreferredSizeWidget get selectedAppBar => _appBars[_pageIndex];
  Widget get selectedView => _pages[_pageIndex];

  void updateView(int newIndex) {
    _pageIndex = newIndex;
    notifyListeners();
  }
}
