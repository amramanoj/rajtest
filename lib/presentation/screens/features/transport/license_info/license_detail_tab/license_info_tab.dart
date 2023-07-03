import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';
import 'package:rajcop_official/presentation/widgets/custom_button.dart';
import 'package:rajcop_official/presentation/widgets/custom_checkbox.dart';
import 'package:rajcop_official/presentation/widgets/custom_dropdown.dart';
import 'package:rajcop_official/presentation/widgets/custom_message.dart';
import 'package:rajcop_official/presentation/widgets/custom_textfield.dart';

class LicenseInfoTab extends StatelessWidget {
  LicenseInfoTab({super.key});
  final List<String> listOfCheckBoxString=["Owner Details","Challan Details","Vehicle Details","Smart Details","Hypothecation/insurance information","Attached Trailer Details"];
  List<Widget> ?listOfWidget;
  @override
  Widget build(BuildContext context) {
    listOfWidget= listOfCheckBoxString.map((e) => CustomCheckBox(title: e)).toList();
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          children: [
            const SizedBox(height: 10.0,),

            const CustomTextField(title: "Account number",isNumber: true,),
            const SizedBox(height: 15.0,), const Align(alignment:Alignment.centerLeft,child: Text("Select Bank") ,),
            const SizedBox(height: 5.0,),
            const CustomDropDown(list: ["State bank of india ","punjab national bank","भारतीय स्टेट बैंक"]),
            const SizedBox(height: 15.0,),

            Container(
              width: screenWidth(context),
              height: 260.0,
              child: GridView.count(crossAxisCount: 2,

                  childAspectRatio: 4,
                  children:listOfWidget!

              ),


            ),
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
