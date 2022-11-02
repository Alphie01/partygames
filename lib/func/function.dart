import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

final url = "http://api.sehirkilavuzu.com/nh%C4%B1e.php";


var _postData = [];
var _PostedData = [];
var SendedObj;
var kullanici_mail = '';
var Kullanici_pass = '';

var kullanici_info;
var nhie_cata;
var nhie_inside = [];

fetchHaveIever(String pageUrl) async {
  try {
    final getUserUrl = url + "?"+ pageUrl;
    var respon = await get(Uri.parse(getUserUrl));
    nhie_cata = await jsonDecode(respon.body);

  } catch (err) {}
}

//api.sehirkilavuzu.com/nh%C4%B1e.php?fetchHNIE=true&catagory=3

fetchHaveIeverinside(String pageUrl, String language) async {
  try {
    final getUserUrl = url + "?fetchHNIE=true&catagory=" + pageUrl + "&language=" + language;
    var respon = await get(Uri.parse(getUserUrl));
    nhie_inside = await jsonDecode(respon.body);
    print(nhie_inside);
    if(respon.statusCode==200){
      return 1;
    }else{
      return 0;
    }
  } catch (err) {}
}








void writeDataGet() async {
  try {
    final writenDataUrl = url +
        "?writeData=true&kullanici_mail=denememaildir22@gmail.com&kullanici_password=denemep31231assword";
    final respon = await get(Uri.parse(writenDataUrl));

    print(respon.body);
  } catch (err) {}
}



PostData(Object obj) async {
  try {
    var response = await post(Uri.parse(url), body: obj);
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    kullanici_info = await jsonDecode(response.body);
    /*Navigator.pushReplacement(
      //Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    )*/
  } catch (err) {
    print(err);
  }
}