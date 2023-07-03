import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/screens/io_eo_dashboard/io_eo_dashboard.dart';

import 'package:rajcop_official/presentation/widgets/customcard_dashboard.dart';
class RMSDashboard extends StatelessWidget {
  const RMSDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:DashBoardCard(title: "IO/EO",image: "assets/officer.png",onclick: (){

        Navigator.push(context, MaterialPageRoute(builder: (_)=>const IoEoDashboard()));

      }),

    );
  }
onCardClick(){


}
}
