import 'package:ebook_app/general/general_variable.dart';
import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/pages/home/components/detail_book_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
                    index == 0 ? SizedBox(width: defaultMargin,) : SizedBox(width: 10,),
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
                    index == typeBookList.length - 1 ? SizedBox(width: defaultMargin,) : SizedBox(width: 0,),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 30,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Text("Trending Now",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: blackColor,
            ),
          ),
        ),
        SizedBox(height: 12,),
        Container(
          height: size.height * 0.31,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: books.length,
            itemBuilder: (context, index) =>
                Row(
                  children: [
                    index == 0 ? SizedBox(width: defaultMargin,) : SizedBox(width: 20,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) {
                              return DetailBookPage(book: books[index],);
                            }));
                      },
                      child: Container(
                        width: size.width * 0.29,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width * 0.29,
                              height: size.height * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                  image: NetworkImage(books[index].image),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(books[index].writer,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: greyColor,
                              ),
                            ),
                            Text(books[index].title,
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
                    index == books.length - 1 ? SizedBox(width: defaultMargin,) : SizedBox(),
                  ],
                ),
          ),
        ),
      ],
    );
  }
}
