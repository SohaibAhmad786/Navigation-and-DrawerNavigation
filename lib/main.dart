import 'dart:js';

import 'package:drawer_nd_navigation/navigation_drawer.dart';
import 'package:drawer_nd_navigation/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: HomeScreen(),
    initialRoute: HomeScreen.id,
    routes: {
      HomeScreen.id: (context) => HomeScreen(),
      ScreenTwo.id: (context) => ScreenTwo()
    },
  ));
}
