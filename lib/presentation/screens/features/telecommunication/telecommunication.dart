import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/screens/features/telecommunication/mobile_number/mobile_number.dart';
import 'package:rajcop_official/presentation/screens/shared_page/Settings/bankdetails_settings.dart';
import 'package:rajcop_official/presentation/screens/shared_page/request_detail/request_detail.dart';
import 'package:rajcop_official/presentation/widgets/big_widget/custom_tab_bar.dart';
import 'package:rajcop_official/presentation/widgets/custom_list_tile.dart';
class Telecommunication extends StatelessWidget {
  const Telecommunication({super.key});

  @override
  Widget build(BuildContext context) {
    List<TelecommunicationItemModel> list=[
      TelecommunicationItemModel(iconData: Icons.smartphone_outlined, title: "Mobile Number"),
      TelecommunicationItemModel(iconData: Icons.line_style_outlined, title: "IMEI Number"),
      TelecommunicationItemModel(iconData: Icons.cell_tower, title: "Tower Dump"),
      TelecommunicationItemModel(iconData: Icons.gps_fixed, title: "IPDR(IP Detail Record)"),
      TelecommunicationItemModel(iconData: Icons.smartphone_outlined, title: "International Gateway CDR"),
      TelecommunicationItemModel(iconData: Icons.place, title: "Live Location in Request"),
    ];
    return Scaffold(
      appBar: AppBar(title:const  Text("Telecommunication"),),
      body: ListView.builder(
itemCount: list.length,
          itemBuilder: (context,index){

return InkWell(
    onTap: (){

      Navigator.push(context,MaterialPageRoute(builder: (_)=>   CustomTabBar(listWidget: const [
        RequestDetail(),MobileNumberTab(list: ["GPRS Request"],title: "mobile number",),
        BankDetailSetting()
      ],tabNameList:  const ["Request Detail ","Mobile Number","settings"],appBarTitle: list[index].title,)));



    },

    child: CustomListTile(title: list[index].title, iconData: list[index].iconData));
      }),
    );
  }
}

class TelecommunicationItemModel{
String title;
IconData iconData;
TelecommunicationItemModel({required this.iconData,required this.title});
}