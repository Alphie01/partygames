import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottle_Sub extends StatelessWidget {
  final int team_size;
  bool ball_1 = false;
  bool ball_2 = false;
  bool ball_3 = false;
  bool ball_4 = false;
  bool ball_5 = false;
  bool ball_6 = false;
  bool ball_7 = false;
  bool ball_8 = false;




  bottle_Sub({Key? key,
    required this.team_size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(team_size == 3){

    }
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      height: height,
      child: Column(

        children: [
          Container(
            height: height/5,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
                Container(
                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
                Container(
                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
              ],
            ),
          ),          Container(
            height: 2.3*height/5,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
                Container(

                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/bottle.png"),
                        fit:BoxFit.cover,
                        filterQuality:FilterQuality.high
                      ),
                      borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
                Container(
                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
              ],
            ),
          ),          Container(
            height: height/5,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
                Container(
                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
                Container(
                  width: width/5,
                  height: width/5,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(width/5)
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
