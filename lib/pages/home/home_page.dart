import 'package:ebook_app/general/general_variable.dart';
import 'package:ebook_app/pages/home/components/content.dart';
import 'package:ebook_app/pages/home/components/detail_book_page.dart';
import 'package:ebook_app/pages/home/components/header.dart';
import 'package:ebook_app/pages/home/components/history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldState,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderHomePage(),
                  History(),
                  SizedBox(height: 30,),
                  Content(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
