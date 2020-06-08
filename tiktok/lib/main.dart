import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './bottomNav.dart';
import './widgets/home_header.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            HomeScreen(),
            BottomNavigation(),
            homeHeader(),
          ],
        ),
      ),
    );
  }
}
