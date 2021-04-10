import 'package:ebook_app/general/general_variable.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class DetailBookPage extends StatefulWidget {
  @override
  _DetailBookPageState createState() => _DetailBookPageState();
}

class _DetailBookPageState extends State<DetailBookPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldState,
      backgroundColor: greenColor,
      appBar: new AppBar(
        iconTheme: IconThemeData(
            color: blackColor
        ),
        title: Text("Book Details",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share_outlined),
            onPressed: null,
          ),
        ],
        // leading: new IconButton(
        //   icon: new Icon(Icons.arrow_back_ios_outlined, size: 22, color: blackColor,),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                  width: MediaQuery.of(context).size.width * 0.47,
                  height: MediaQuery.of(context).size.height * 0.33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.gramedia.com/uploads/items/9786024526986_Sebuah-Seni-Untuk-Bersikap-Bodo-Amat.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
