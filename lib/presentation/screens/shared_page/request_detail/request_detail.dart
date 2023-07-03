import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/widgets/cctns_feild.dart';
import 'package:rajcop_official/presentation/widgets/custom_button.dart';
import 'package:rajcop_official/presentation/widgets/custom_dropdown.dart';
import 'package:rajcop_official/presentation/widgets/custom_message.dart';
import 'package:rajcop_official/presentation/widgets/date_text_card.dart';

class RequestDetail extends StatelessWidget {
  const RequestDetail({super.key});

  @override
  Widget build(BuildContext context) {


    final screenHeight=MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 3.0),
      width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,

      child:const SingleChildScrollView(
        child: Column(children: [
          Align(alignment: Alignment.centerLeft,child: Text("Request source")),
          SizedBox(height: 5.0,),
          CCTNSField(),
SizedBox(height: 15.0,),
          Align(alignment: Alignment.centerLeft,child: Text("Request source")),
          SizedBox(height: 5.0,),
          CustomDropDown(list:["First Information Report(IIF-1)","Non cognizable Report(NCR)",]),
SizedBox(height: 10.0,),


              Row(

                children: [
                  Expanded(child: DateTextCard( heading:"FIR No.", dataString: "Select FIR No.")),
                  Expanded(child: DateTextCard( heading:"FIR Date", dataString: "")),
                ],
              ),
        Row(

          children: [
            Expanded(child: DateTextCard( heading:"From Date", dataString: "",iconData: Icons.calendar_month,)),
            Expanded(child: DateTextCard(iconData: Icons.watch_later_outlined, heading:"from time", dataString: "23:52")),
          ],
        ),
        Row(

          children: [
            Expanded(child: DateTextCard( heading:"To Date", dataString: "",iconData: Icons.calendar_month)),
            Expanded(child: DateTextCard(iconData: Icons.watch_later_outlined, heading:"To Time", dataString: "data")),
          ],
        )
     ,

          SizedBox(height: 10.0,),
          CustomMessage(labelText: "Brief Reason",),
          SizedBox(height: 10.0,),
          CustomButton(title: "Next",)


        ],),
      ),
    );
  }
}






/*

  Container(

          height: screenHeight/4,
          width: double.infinity,
          child: GridView.builder(

            itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: 2.5

              ),
              itemBuilder: (context,index){

            return Center(child: const DateTextCard(iconData: Icons.calendar_month, heading:"heading", dataString: "data"));
              }),
        ),
 */





