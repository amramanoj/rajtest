

  import 'package:flutter/material.dart';

screenWidth(context){
  return MediaQuery.of(context).size.width;
}
screenHeight(context){
  return MediaQuery.of(context).size.height;
}
ThemeData customTheme(){
  Color primaryLight=const Color(0xff474fff);
  Color primaryColor=const Color(0xff0009a4);
  Color primaryDark= const Color(0xff020564);
  return ThemeData(
    appBarTheme:  AppBarTheme(
      backgroundColor: primaryColor
    ),
primaryColor:primaryColor,
    primaryColorDark:primaryDark,
    primaryColorLight: primaryLight,
    primarySwatch: Colors.indigo,
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 23.0,
color: Colors.white,

      )

    )
  );
}
