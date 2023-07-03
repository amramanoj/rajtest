import 'package:flutter/material.dart';
import 'package:rajcop_official/config/page_route.dart';
import 'package:rajcop_official/presentation/widgets/customcard_dashboard.dart';
import 'package:rajcop_official/presentation/widgets/my_request1.dart';

import 'package:rajcop_official/presentation/screens/io_eo_dashboard/ui_helper/table_widget.dart';

class IoEoDashboard extends StatelessWidget {
  const IoEoDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: const Text("IO/EO Dashboard"),),body:
GridView.count(crossAxisCount: 2,children:  [

    const CustomCard2(widget: CustomTable(),centerText: "My Requests",iconData: Icons.touch_app_outlined,),
//
    CustomCard2(widget:
    Expanded(
    child: Container(
    margin: const EdgeInsets.only(bottom: 10.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    const  Text("0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17.0),),
    const SizedBox(height: 5.0,),
    Text("Agencies",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 17.0),)

    ],),
    ),
    ),
      centerText: "Response Received",iconData: Icons.get_app_outlined,),

 CustomCard2(widget:

  Expanded(child: Row(
    children: [
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10.0,),
              Text("SHO",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),

            ],),
        ),
      ),

      Container(width: 1.0,color: Colors.black,),
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

              const SizedBox(height: 10.0,),
              Text("DNO",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),

            ],),
        ),
      ),


    ],
  ))

    ,centerText: "Rejected",iconData: Icons.thumb_down_rounded,),

  DashBoardCard(title: "Notifications",image: "assets/bell.png",onclick: (){}),
  DashBoardCard(title: "Archive",image: "assets/box.png",onclick: (){
  }),
  DashBoardCard(title: "Your feedback",image: "assets/cd.png",onclick: (){
    Navigator.pushNamed(context, CustomRoute.recordFeedBack);

  }),


],)


      ,
    floatingActionButton: FloatingActionButton(onPressed: () {


      Navigator.pushNamed(context,CustomRoute.requestFor);

    },backgroundColor: Theme.of(context).primaryColorLight,child: const Icon(Icons.add),
    ),
    );
  }
}

