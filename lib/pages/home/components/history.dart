import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:ebook_app/general/general_variable.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30)
          ),
          color: whiteColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin,),
            child: Text("History",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: blackTitleColor,
              ),
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
                      index == 0 ? SizedBox(width: defaultMargin,) : SizedBox(width: 20,),
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
                              width: 80,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                  image: NetworkImage(historyImageList[index]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(width: 12,),
                            Expanded(
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
                      index == historyImageList.length - 1 ? SizedBox(width: defaultMargin,) : SizedBox(),
                    ],
                  ),
            ),
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
