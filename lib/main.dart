import 'package:flutter/material.dart';
import 'package:move_on_tally/models/page_list_model.dart';
import 'package:move_on_tally/views/home_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MoveOnTally());

class MoveOnTally extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ViewList>(
      create: (context) => ViewList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeView(),
      ),
    );
  }
}
