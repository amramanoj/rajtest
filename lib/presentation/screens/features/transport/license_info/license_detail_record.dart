import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';
import 'package:rajcop_official/presentation/screens/features/transport/license_info/license_detail_tab/license_info_tab.dart';
import 'package:rajcop_official/presentation/screens/shared_page/Settings/bankdetails_settings.dart';
import 'package:rajcop_official/presentation/screens/shared_page/request_detail/request_detail.dart';

class LicenseDetailRecord extends StatelessWidget {

  const LicenseDetailRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(appBar: AppBar(title: const Text("License  Detail Record"),),body:
 Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10.0),
            height: 35.0,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xcf88898a)
          ),child:
          TabBar(
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontSize: screenWidth(context)/37),
            labelStyle:  TextStyle(fontSize: screenWidth(context)/34),
            indicatorWeight: 3.0,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Theme.of(context).primaryColor,
            ),
            tabs: const [
              Tab(text: "Request Detail",),
              Tab(text: "License Detail",),
              Tab(text: "Settings",),
            ],),),



          Flexible(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child:  TabBarView(children: [

                RequestDetail()

                ,LicenseInfoTab(),

              BankDetailSetting()

                ])),
          )

        ],),




      ),
    );
  }
}
