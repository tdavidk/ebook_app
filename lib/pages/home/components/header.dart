import 'package:ebook_app/general/general_variable.dart';
import 'package:flutter/material.dart';

class HeaderHomePage extends StatefulWidget {
  @override
  _HeaderHomePageState createState() => _HeaderHomePageState();
}

class _HeaderHomePageState extends State<HeaderHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
    );
  }
}
