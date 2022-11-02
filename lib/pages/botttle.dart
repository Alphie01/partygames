import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party/pages/bottle_sub.dart';
import 'package:party/widgets/app_large_text.dart';
import 'package:party/widgets/app_text.dart';

class bottle extends StatefulWidget {
  const bottle({Key? key}) : super(key: key);

  @override
  State<bottle> createState() => _bottleState();
}

class _bottleState extends State<bottle> {
  bool entered = false;
  int team_member = 0;
  var color = [
    Colors.black,

  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery
          .of(context)
          .size
          .height,
      alignment: Alignment.center,
      child: entered ?  bottle_Sub(team_size: 3,)
          : Container(
        width: double.maxFinite,
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: Colors.black,
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,


            children: [
              AppLargeText(text: "Doğruluk mu? Cesaret mi?", color: Colors.white,align: TextAlign.center, ),
              SizedBox(height: 30,),
              AppText(
                  text: "Oynamaya başlamak için kaç kişi olduğunu giriniz...",color: Colors.white,align: TextAlign.center, ),
              SizedBox(height: 30,),
              TextField(
                onChanged: (news) {
                  setState(() {
                    team_member = news as int;
                  });
                },

                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 16, color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Kişi Sayısı",

                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  filled: true,

                  prefixText: ' ',
                  fillColor: Color(0xff161d27).withOpacity(0.9),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
              SizedBox(height: 30,),
              FlatButton(onPressed: () {
                setState(() {
                  entered = true;
                });
              },color: Colors.white,

                  child: AppText(text: "Oyuna Başla",))
            ],
          ),
        ),
      ),

    );
  }
}
