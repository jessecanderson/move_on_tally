import 'package:flutter/material.dart';
import 'package:move_on_tally/models/park_model.dart';
import 'package:move_on_tally/widgets/park_card.dart';
import 'package:move_on_tally/widgets/visit_tally.dart';

class SearchViewAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Search View'),
    );
  }
}

class SearchView extends StatelessWidget {
  final List<Chip> _chips = [
    Chip(
      elevation: 3.0,
      label: Text('North Monroe'),
    ),
    Chip(
      elevation: 3.0,
      label: Text('Southwood'),
    ),
    Chip(
      elevation: 3.0,
      label: Text('Kilarn'),
    ),
  ];

  final List<Park> _parks = [
    Park(
      name: 'Tom Brown',
      imageUrl: 'assets/images/tomBrown.jpg',
    ),
    Park(
      name: 'Levy Park',
      imageUrl: 'assets/images/levyPark.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Search'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Recommendations',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ParkCard(parks: _parks),
            Row(
              children: [
                Text(
                  'Choose a Location',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FlatButton(
                  onPressed: () => null,
                  child: Row(
                    children: <Widget>[
                      Text('View More '),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(15.0),
                  height: 30,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => _chips[index],
                    separatorBuilder: (context, index) => SizedBox(
                      width: 5.0,
                    ),
                    itemCount: _chips.length,
                  ),
                ),
              ],
            ),
            VisitTallyCard(),
          ],
        ),
      ),
    );
  }
}
