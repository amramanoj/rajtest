import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/screens/features/bank/account_detail/bank_detail_record/account_number/account_number.dart';
import 'package:rajcop_official/presentation/screens/features/bank/cctv_footage/cctv_detail_tab/cctv_detail_tab.dart';
import 'package:rajcop_official/presentation/screens/shared_page/Settings/bankdetails_settings.dart';
import 'package:rajcop_official/presentation/screens/shared_page/request_detail/request_detail.dart';
import 'package:rajcop_official/presentation/widgets/big_widget/custom_tab_bar.dart';
import 'package:rajcop_official/presentation/widgets/custom_list_tile.dart';

class BankDetail extends StatelessWidget {
  const BankDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(title: const Text("Bank Detail"),),
      body: Column(children: [
        InkWell(
          onTap: (){
Navigator.push(context,MaterialPageRoute(builder: (_)=> CustomTabBar(listWidget: [const  RequestDetail(),AccountNumber(),
const BankDetailSetting()
],tabNameList: const ["Request Detail ","Account Number","settings"],appBarTitle: "Bank Detail Record",)));

          },
            child:const  CustomListTile(iconData: Icons.account_balance_outlined,title: "Account Detail",)),



 InkWell(
          onTap: (){

            Navigator.push(context,MaterialPageRoute(builder: (_)=> const CustomTabBar(listWidget: [RequestDetail(),CCTVDetailTab(),
              BankDetailSetting()
            ],tabNameList: ["Request Detail ","CCTV Detail","settings"],appBarTitle: "CCTV Footage Record",)));



          },

          child: const CustomListTile(iconData: Icons.videocam_outlined,title: "CCTV Footage",)),


      ],),
    );
  }

}
