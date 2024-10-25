import 'package:flutter/material.dart';

class RouteDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route Details")),
      body: Column(
        children: [
          ListTile(
            title: Text("Start Location"),
            subtitle: Text("Location details here"),
          ),
          ListTile(
            title: Text("Stop Location"),
            subtitle: Text("Location details here"),
          ),
          ListTile(
            title: Text("Total Distance"),
            subtitle: Text("XX KM"),
          ),
          ListTile(
            title: Text("Total Duration"),
            subtitle: Text("HH:MM"),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: Center(child: Text("Map Route Placeholder")),
            ),
          ),
        ],
      ),
    );
  }
}
