import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/Choose_location.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/loading': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => Location()
      },
    ));
