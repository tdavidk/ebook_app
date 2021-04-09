import 'dart:math' as math;

import 'package:ebook_app/general/general_variable.dart';
import 'package:ebook_app/pages/detail_book_page.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _valTypeBook= "All Book";

  List historyImageList = [
    "https://cdn.gramedia.com/uploads/items/9789797808983_Manusia-Seten.jpg",
    "https://cdn.gramedia.com/uploads/items/9786230017193_cover_Demon_Slayer_01.jpg",
  ];

  List historyTitleList = [
    "Manusia Setengah Salmon",
    "Demon Slayer: Kimetsu no Yaiba 01"
  ];

  List historyProgress = [
    50,
    75,
  ];

  List typeBookList = [
    "All Book",
    "Comic",
    "Business",
    "Novel",
    "Technology",
    "Finance",
  ];

  List trendingNowImages = [
    "https://cdn.gramedia.com/uploads/items/9786024526986_Sebuah-Seni-Untuk-Bersikap-Bodo-Amat.jpg",
    "https://cdn.gramedia.com/uploads/items/9786020333175_rich-dad-poor-dad-_edisi-revisi_.jpg",
    "https://cdn.gramedia.com/uploads/items/9786230022180_Jujutsukaisen_1.jpg"
  ];

  List trendingNowWriter = [
    "Mark Manson",
    "Robert T. Kiyosaki",
    "Gege Akutami",
  ];

  List trendingNowTitle = [
    "Sebuah Seni untuk Bersikap Bodo Amat",
    "Rich Dad Poor Dad",
    "Jujutsu Kaisen 01",
  ];

  @override
  Widget build(BuildContext context) {
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
                  Container(
                    padding: EdgeInsets.all(30.0),
                    color: whiteColor,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/rayul_unsplash.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: BoxShape.circle
                                  ),
                                ),
                                SizedBox(width: 8,),
                                RichText(
                                    text: TextSpan(
                                        text: "Hello David\n",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: blackTitleColor,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Good Morning",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: greyColor,
                                            ),
                                          )
                                        ]
                                    )
                                ),
                              ],
                            ),
                            Image.asset("assets/icons/icon_menu.png",
                              width: 18,
                              height: 14,
                            ),

                          ],
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: borderColor),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            hintText: 'Find Your Favorite Book',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: greyColor,
                            ),
                            suffixIcon: Container(
                              decoration: BoxDecoration(
                                color: greenColor,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Icon(
                                Icons.search, color: whiteColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 30, bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30)
                      ),
                      color: whiteColor
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("History",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: blackTitleColor,
                          ),
                        ),
                        SizedBox(height: 12,),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.17,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: historyImageList.length,
                            itemBuilder: (context, index) =>
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.6,
                                      height: MediaQuery.of(context).size.height * 0.17,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                            border: Border.all(color: borderColor),
                                            borderRadius: BorderRadius.circular(12.0)
                                      ),
                                      child: Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.20,
                                                height: MediaQuery.of(context).size.height * 0.14,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(6),
                                                    image: DecorationImage(
                                                      image: NetworkImage(historyImageList[index]),
                                                      fit: BoxFit.fill,
                                                    ),
                                                ),
                                              ),
                                              SizedBox(width: 12,),
                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.28,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    AutoSizeText(
                                                      historyTitleList[index],
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          height: 1.3,
                                                          fontWeight: FontWeight.w600
                                                      ),
                                                      minFontSize: 10,
                                                      maxLines: 2,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                    Transform(
                                                      transform: Matrix4.rotationY(math.pi),
                                                      alignment: Alignment.center,
                                                      child: CircularProgressIndicator(
                                                        value: historyProgress[index] * 0.01,
                                                        semanticsLabel: 'Linear progress indicator',
                                                        valueColor: new AlwaysStoppedAnimation<Color>(greenColor),
                                                        backgroundColor: backgroundProgressColor,
                                                      ),
                                                    ),
                                                    AutoSizeText(
                                                      "${historyProgress[index].toString()}% Completed",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          height: 1.3,
                                                          fontWeight: FontWeight.w500
                                                      ),
                                                      minFontSize: 8,
                                                      maxLines: 1,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                      ),
                                    ),
                                    SizedBox(width: 20,)
                                  ],
                                ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 42,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: typeBookList.length,
                            itemBuilder: (context, index) => Row(
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _valTypeBook = typeBookList[index];
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6.0),
                                          color: _valTypeBook == typeBookList[index] ? greenColor : Colors.transparent,
                                        ),
                                        child: Text(typeBookList[index],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: _valTypeBook == typeBookList[index] ? whiteColor : greyColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text("Trending Now",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(height: 12,),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.31,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: trendingNowImages.length,
                            itemBuilder: (context, index) =>
                             Row(
                               children: [
                                 InkWell(
                                   onTap: () {
                                     Navigator.push(context,
                                         MaterialPageRoute(builder: (context) {
                                           return DetailBookPage();
                                         }));
                                   },
                                   child: Container(
                                    width: MediaQuery.of(context).size.width * 0.29,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.29,
                                          height: MediaQuery.of(context).size.height * 0.2,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            image: DecorationImage(
                                              image: NetworkImage(trendingNowImages[index]),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8,),
                                        Text(trendingNowWriter[index],
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: greyColor,
                                          ),
                                        ),
                                        Text(trendingNowTitle[index],
                                          style: TextStyle(
                                            fontSize: 14,
                                            height: 1.3,
                                            fontWeight: FontWeight.w600,
                                            color: blackColor,
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                                 ),
                                 SizedBox(width: 20,)
                               ],
                             ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
