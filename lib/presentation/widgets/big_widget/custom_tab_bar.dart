import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';

class CustomTabBar extends StatelessWidget {
final List<String> tabNameList;
final List<Widget> listWidget;
final String appBarTitle;
  const CustomTabBar({super.key,required this.tabNameList,required this.listWidget,required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(appBar: AppBar(title: Text(appBarTitle),),body:
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
            tabs: tabNameList.map((e) => Tab(text: e,)).toList(),),),
         Flexible(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: listWidget)),
          )

        ],),




      ),
    );
  }
}
