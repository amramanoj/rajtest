import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';
import 'package:rajcop_official/presentation/widgets/custom_button.dart';
import 'package:rajcop_official/presentation/widgets/custom_checkbox.dart';
class BankDetailSetting extends StatelessWidget {
  const BankDetailSetting({super.key});

  @override
  Widget build(BuildContext context) {
return Container(
  width: screenWidth(context),
  height: screenHeight(context),
  margin:EdgeInsets.only(left: screenWidth(context)/45,right: screenWidth(context)/45,bottom: 30.0,top: 10.0) ,
  child: const Column(
    children: [
CustomCheckBox(title: "Persist the data over retention period."),
      Spacer(),
      Align(
          alignment:Alignment.bottomCenter,
          child: CustomButton(title: "Submit",))
    ],
  ),
);


  }
}
