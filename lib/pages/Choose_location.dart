import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('location 2');
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey.shade400,
      ),
      body: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('$counter')),
    );
  }
}
