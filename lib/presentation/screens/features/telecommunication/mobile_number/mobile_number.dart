import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';
import 'package:rajcop_official/presentation/widgets/custom_button.dart';
import 'package:rajcop_official/presentation/widgets/custom_checkbox.dart';
import 'package:rajcop_official/presentation/widgets/custom_dropdown.dart';
import 'package:rajcop_official/presentation/widgets/custom_textfield.dart';
class MobileNumberTab extends StatelessWidget {
  final String title;
 const MobileNumberTab({super.key,required this.list,required this.title});
final List<String> list;

  @override
  Widget build(BuildContext context) {
    List<Widget> listWidget=list.map((e) => Center(child: CustomCheckBox(title: e))).toList();
    return Container(width: screenWidth(context),
    margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
    height: screenHeight(context),
    child:  Column(
      children: [
      const  CustomTextField(title: "Mobile Number",isNumber: true,),

       const  SizedBox(height: 15.0,),

       const  Align(alignment: Alignment.centerLeft,child:
        Text("Select Operator")
          ,),
      const   SizedBox(height: 5.0,),
       const  CustomDropDown(list: ["airtel","VI","jio"]),
       const SizedBox(height: 8.0,),
       SizedBox(

          height: screenHeight(context)/30*list.length,

          child: GridView.count(crossAxisCount: 2,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 4,children: listWidget,


          ),
        )
,
       const  Align(alignment: Alignment.centerLeft,child:
          Text("Region") ,),
       const  SizedBox(height: 15.0,),

      const   CustomDropDown(list: ["PAN India","Rajasthan","Punjab","Gujrat"]),
      const  SizedBox(height: 15.0,),
        FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        ),
       const  SizedBox(height: 15.0,),
       const  CustomButton(title: "Submit")

      ],
    ),

    );
  }
}
