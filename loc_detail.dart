import 'package:flutter/material.dart';
import 'route_detail_screen.dart';

class LocationDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Location Details")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: Center(child: Text("Map Placeholder")),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: 5, // Sample location count
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Visited Location ${index + 1}"),
                  subtitle: Text("Details and Time"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RouteDetailScreen()),
                    );
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Date Filter functionality
            },
            child: Text("Filter by Date"),
          ),
        ],
      ),
    );
  }
}
