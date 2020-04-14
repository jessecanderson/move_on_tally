import 'package:flutter/material.dart';
import 'package:move_on_tally/models/park_model.dart';

class ParkCard extends StatelessWidget {
  const ParkCard({
    Key key,
    @required List<Park> parks,
  })  : _parks = parks,
        super(key: key);

  final List<Park> _parks;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _parks.length,
        itemBuilder: (context, index) {
          Park _park = _parks[index];
          return Container(
            height: 250,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(8.0),
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(children: <Widget>[
              Positioned.fill(
                child: Image.asset(
                  _park.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 15,
                bottom: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${_park.name}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Capital Circle',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ]),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    );
  }
}
