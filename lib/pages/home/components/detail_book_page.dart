import 'package:ebook_app/general/general_variable.dart';
import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable_text/expandable_text.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class DetailBookPage extends StatefulWidget {
  final Book book;

  const DetailBookPage({Key key, this.book}) : super(key: key);

  @override
  _DetailBookPageState createState() => _DetailBookPageState();
}

class _DetailBookPageState extends State<DetailBookPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldState,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
              width: MediaQuery.of(context).size.width * 0.47,
              height: MediaQuery.of(context).size.height * 0.33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image: NetworkImage(widget.book.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: size.width * 0.55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.book.title,
                                    style: TextStyle(
                                      fontSize: 20,
                                      height: 1.3,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                  ),
                                  Text(widget.book.writer,
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.3,
                                      fontWeight: FontWeight.w500,
                                      color: greyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text("${widget.book.price == null ? "Free Access"
                                : "Rp " + widget.book.price }",
                              style: TextStyle(
                                fontSize: 14,
                                height: 1.3,
                                fontWeight: FontWeight.w500,
                                color: greenColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: defaultMargin,),
                        Text("Description",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.3,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(height: 6,),
                        ExpandableText(widget.book.description,
                          expandText: 'show more',
                          linkColor: greenColor,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 12,
                            height: 1.3,
                            fontWeight: FontWeight.normal,
                            color: greyColor,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: size.width,
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            color: greyLighterColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("Rating",
                                    style: TextStyle(
                                      fontSize: 10,
                                      height: 1.3,
                                      fontWeight: FontWeight.w500,
                                      color: greyDarkerColor,
                                    ),
                                  ),
                                  SizedBox(height: 2,),
                                  Text(widget.book.rating.toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      height: 1.3,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1,
                                height: size.height,
                                color: greyDarkerColor,
                              ),
                              Column(
                                children: [
                                  Text("Number of pages",
                                    style: TextStyle(
                                      fontSize: 10,
                                      height: 1.3,
                                      fontWeight: FontWeight.w500,
                                      color: greyDarkerColor,
                                    ),
                                  ),
                                  SizedBox(height: 2,),
                                  Text("${widget.book.pages.toString()} Page",
                                    style: TextStyle(
                                      fontSize: 12,
                                      height: 1.3,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1,
                                height: size.height,
                                color: greyDarkerColor,
                              ),
                              Column(
                                children: [
                                  Text("Language",
                                    style: TextStyle(
                                      fontSize: 10,
                                      height: 1.3,
                                      fontWeight: FontWeight.w500,
                                      color: greyDarkerColor,
                                    ),
                                  ),
                                  SizedBox(height: 2,),
                                  Text(widget.book.language,
                                    style: TextStyle(
                                      fontSize: 12,
                                      height: 1.3,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: defaultMargin,),
                        Container(
                          width: size.width,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                primary: greenColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                                )
                              ),
                              child: Text("Read Now",
                                style: TextStyle(
                                  fontSize: 20,
                                  height: 1.3,
                                  fontWeight: FontWeight.w600,
                                  color: whiteColor,
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: greenColor,
                      ),
                      child: IconButton(
                        icon: Icon(widget.book.isSave == true ? Icons.bookmark : Icons.bookmark_outline, color: whiteColor,),
                        onPressed: () {
                          setState(() {
                            if (widget.book.isSave == true){
                              widget.book.isSave = false;
                            }else {
                              widget.book.isSave = true;
                            }
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
