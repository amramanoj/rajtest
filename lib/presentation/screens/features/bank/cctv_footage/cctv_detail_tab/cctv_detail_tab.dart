import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';
import 'package:rajcop_official/presentation/widgets/custom_button.dart';
import 'package:rajcop_official/presentation/widgets/custom_checkbox.dart';
import 'package:rajcop_official/presentation/widgets/custom_dropdown.dart';
import 'package:rajcop_official/presentation/widgets/custom_message.dart';
import 'package:rajcop_official/presentation/widgets/custom_textfield.dart';

class CCTVDetailTab extends StatelessWidget {
const  CCTVDetailTab({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          children: [
            const SizedBox(height: 10.0,),
 const CustomTextField(title: "Account number",isNumber: true,),
            const SizedBox(height: 10.0,),
 const CustomTextField(title: "Location",isNumber: true,),
            const SizedBox(height: 15.0,), const Align(alignment:Alignment.centerLeft,child: Text("Select Bank") ,),
            const SizedBox(height: 5.0,),
            const CustomDropDown(list: ["State bank of india ","punjab national bank","भारतीय स्टेट बैंक"]),
            const SizedBox(height: 15.0,),
            FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(Icons.add),
                onPressed:
            (){

            }
            ),



           const    SizedBox(height: 15.0,),

           const  CustomButton(title: "Next",)
          ],
        ),
      ),
    );
  }
}
