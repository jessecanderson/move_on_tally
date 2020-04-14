import 'package:flutter/material.dart';

class VisitTallyCard extends StatelessWidget {
  final String cardImage = 'assets/images/canopy.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              cardImage,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 25,
            top: 30,
            child: Row(
              children: <Widget>[
                Text(
                  'Visit Tallahassee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {
                    print('pressed');
                  },
                  child: Text(
                    'Let\'s Go',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
