import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/screens/features/transport/license_info/license_detail_record.dart';
import 'package:rajcop_official/presentation/screens/features/transport/vehicle_info/vehicle_detail_record.dart';
import 'package:rajcop_official/presentation/widgets/big_widget/custom_tab_bar.dart';
import 'package:rajcop_official/presentation/widgets/custom_list_tile.dart';

import '../../shared_page/Settings/bankdetails_settings.dart';
import '../../shared_page/request_detail/request_detail.dart';
import '../bank/account_detail/bank_detail_record/account_number/account_number.dart';
class Transport extends StatelessWidget {
  const Transport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transport"),),
      body:  Column(children: [
       InkWell(
           onTap:(){

             Navigator.push(context,MaterialPageRoute(builder: (_)=> const CustomTabBar(listWidget: [  RequestDetail(),Text("empty page"),
           BankDetailSetting()
             ],tabNameList:  ["Request Detail ","Vehicle Detail","settings"],appBarTitle: "Vehicle Detail Record",)));



           },
           child: const CustomListTile(iconData: Icons.local_shipping,title: "Vehicle Info",)),
        InkWell(
                     onTap: (){


                       Navigator.push(context,MaterialPageRoute(builder: (_)=> const CustomTabBar(listWidget: [  RequestDetail(),Text("empty page"),
                         BankDetailSetting()
                       ],tabNameList:  ["Request Detail ","Vehicle Detail","settings"],appBarTitle: "License Detail Record",)));


                     },
                     child: const CustomListTile(iconData: Icons.badge_outlined,title: "License Info",)),
      ],),
    );
  }
}
