import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party/func/function.dart';
import 'package:party/pages/main_Page.dart';
import 'package:party/utils/const.dart';
import 'package:party/widgets/app_large_text.dart';
import 'package:party/widgets/app_text.dart';
import 'package:party/widgets/resp_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  var imgs = [
    "couple_1.jpg",
    "couple_2.jpg",
    "couple_3.jpg",
    "couple_4.jpg",
    "couple_5.jpg",
    "couple_6.jpg",
    "couple_7.jpg",
    "couple_8.jpg",
    "couple_9.jpg"
  ];

  Random random = new Random();
  @override
  void initState() {
    // TODO: implement initState
    //fetchHaveIeverinside("3");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: nhie_inside.length,
          itemBuilder: (_, index) {
            var random = Random().nextInt(imgs.length);

            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/" + imgs[random]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff161d27).withOpacity(1),
                      Color(0xff161d27).withOpacity(0.8),
                      Color(0xff161d27).withOpacity(0.6),
                      Color(0xff161d27).withOpacity(0),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                child: Container(
                  margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MainPage()),
                                );
                              },icon: Icon(Icons.arrow_back_outlined), color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width - 50,
                            child: AppLargeText(
                              text: nhie_inside[index]["que_que"],
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),

                          Container(
                            width: MediaQuery.of(context).size.width - 50,
                            child: AppText(
                              text: "Hikaye yz",
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
