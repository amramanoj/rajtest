import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';
class CustomTextField extends StatelessWidget {
  final bool  isNumber;
  final String title;
  const CustomTextField({super.key,this.isNumber=false,required this.title,this.maxLength});
final int? maxLength;
  @override
  Widget build(BuildContext context) {
    return Container(
height: screenHeight(context)/15,
      width: screenWidth(context),
      decoration: BoxDecoration(
        border: Border.all(),

        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextFormField(
          maxLength:maxLength,
          keyboardType:isNumber?TextInputType.number:TextInputType.text ,
          style: TextStyle(color: Colors.black,fontSize: screenWidth(context)/30),
          decoration: InputDecoration(
            labelText: title,

            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
