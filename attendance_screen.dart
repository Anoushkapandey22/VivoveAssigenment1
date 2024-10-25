import 'package:flutter/material.dart';
import 'location_detail_screen.dart';

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Attendance")),
      body: ListView.builder(
        itemCount: 10, // Sample member count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Member ${index + 1}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: Icon(Icons.location_on), onPressed: () {}),
                IconButton(
                  icon: Icon(Icons.map),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LocationDetailScreen()),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
