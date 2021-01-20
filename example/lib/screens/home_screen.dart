import 'package:flutter/material.dart';
import 'package:sam_card_flutter/sam_card_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('SAM Card Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            SamCard(
              empty: false,
              useMarker: true,
              elevation: 2.0,
              height: 130.0,
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              borderColor: Colors.grey,
              borderWidth: 0.5,
              borderRadius: 15.0,
              markerColor: Colors.green,
              markerWidth: 15.0,
              markerRadius: 15.0,
              image:
                  "https://cdn4.iconfinder.com/data/icons/core-ui-outlined/32/outlined_placeholder-512.png",
              imageColor: Colors.black54,
              title: "Title: Content Title",
              subTitle: "SubTitle: Content SubTitle",
              description: "Description: Content Description...",
            ),
            SamCard(
              empty: true,
              useMarker: true,
              elevation: 2.0,
              height: 130.0,
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              borderColor: Colors.grey,
              borderWidth: 0.5,
              borderRadius: 15.0,
              markerColor: Colors.red,
              markerWidth: 15.0,
              markerRadius: 15.0,
            ),
            SamCard(
              empty: false,
              useMarker: false,
              elevation: 2.0,
              height: 130.0,
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              borderColor: Colors.grey,
              borderWidth: 0.5,
              borderRadius: 15.0,
              image:
                  "https://cdn4.iconfinder.com/data/icons/core-ui-outlined/32/outlined_placeholder-512.png",
              imageColor: Colors.black54,
              title: "Title: Content Title",
              subTitle: "SubTitle: Content SubTitle",
              description: "Description: Content Description...",
            ),
            SamCard(
              empty: true,
              useMarker: false,
              elevation: 2.0,
              height: 130.0,
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              borderColor: Colors.grey,
              borderWidth: 0.5,
              borderRadius: 15.0,
              markerColor: Colors.blue,
              markerWidth: 15.0,
              markerRadius: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
