import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party/func/function.dart';
import 'package:party/pages/inside_NHIE.dart';
import 'package:party/widgets/app_large_text.dart';
import 'package:party/widgets/app_text.dart';


class NeverHave extends StatefulWidget {
  const NeverHave({Key? key}) : super(key: key);

  @override
  State<NeverHave> createState() => _NeverHaveState();
}

class _NeverHaveState extends State<NeverHave> {
  @override
  void initState(){
    // TODO: implement initState
    fetchHaveIever("fetchHNIE_Catas=true");
    nhie_inside = [];
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.black,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            child: AppLargeText(text: "Daha Önceden...", color: Colors.white, size: 24,),
          ),
          GridView.count(
            padding: const EdgeInsets.only(top: 90, left: 15, right: 15),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(6, (index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)
                ),


                height: 50,
                alignment: Alignment.center,
                child: FlatButton(
                  onPressed: () async{
                   var result = await fetchHaveIeverinside(nhie_cata[index]["hnıe_cata_id"], "TR");
                    if(result==1){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                      );
                    }
                  },
                  child: AppLargeText(text: nhie_cata[index]["hnıe_cata_name"], color: Colors.white),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

