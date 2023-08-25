import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void get_data() async {
    Response response = await get(
        Uri.parse('https://www.worldtimeapi.org/api/timezone/Indian/Cocos'));
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].toString().substring(1, 3);

    DateTime present = DateTime.parse(datetime);
    present = present.add(Duration(hours: int.parse(offset)));

    print(present);

    // print(data);
  }

  @override
  void initState() {
    super.initState();
    get_data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Text('loading screen'),
    );
  }
}
