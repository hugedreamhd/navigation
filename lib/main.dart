import 'dart:js';

import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_one.dart';
import 'package:navigation/screen/route_three.dart';
import 'package:navigation/screen/route_two.dart';

void main() {
  runApp(
    MaterialApp(
      //home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/one': (context) => RouteOneScreen(number: 0101),
        '/two': (context) => RouteTwoScreen(),
        '/three': (context) => RouteThreeScreen(),
      },
    ),
  );
}
