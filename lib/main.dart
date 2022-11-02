import 'package:flutter/material.dart';
import 'package:party/func/function.dart';
import 'package:party/pages/inside_NHIE.dart';
import 'package:party/pages/loading.dart';
import 'package:party/pages/main_Page.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState

    fetchHaveIever("fetchHNIE_Catas=true");

    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Parties",

        debugShowCheckedModeBanner: false,
        //home: kullanici_info==null?LoginPage():HomeScreen(),
        home:nhie_cata==null?Loading():MainPage()
        //home: nhie_inside==null?Loading():WelcomePage(),

      //home:registerPage(register_step: 1,)
    );
  }
}
