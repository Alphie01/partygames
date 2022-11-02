import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party/widgets/app_large_text.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.black,
      alignment: Alignment.center,
      child: AppLargeText(text: "Yükleniyor...", color: Colors.white,),
    );
  }
}
