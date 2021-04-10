import 'package:ebook_app/general/general_variable.dart';
import 'package:ebook_app/widgets/bottom_navigation_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: greenColor,
        fontFamily: "Poppins"
      ),
      home: BottomNavigationItem(),
    );
  }
}
