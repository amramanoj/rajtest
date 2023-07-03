import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/screens/io_eo_dashboard/ui_helper/table_widget.dart';


class CustomCard2 extends StatelessWidget {
final Widget widget;
final String centerText;
final IconData iconData;
 const CustomCard2({super.key,required this.widget,required this.centerText,required this.iconData});
 @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    double cardSize=screenWidth>screenHeight?screenWidth/3:screenWidth/2.3;

    return Card(

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(color: Color(0xff0091c5), width: 2.0),


      ),
      color: const Color(0xffffffff),
      shadowColor: Colors.black,

      elevation: 14.0,
      child: Container(

        width: cardSize,
        height:cardSize,
        decoration: const BoxDecoration(

        ),
        child: Column(children: [
          const  SizedBox(height: 12.0,),
          Container(
              color: Colors.white,
              height: cardSize/4.4,
              width: double.infinity,
              child: Column(
                children: [
                  Row(children: [
                    Padding(padding: const EdgeInsets.only(left: 10.0),child: Icon(iconData,color: Theme.of(context).primaryColorDark,size: cardSize/6),),
                    Padding(padding: const EdgeInsets.only(left: 5.0),child: Text('My Requests',style: TextStyle(fontSize: cardSize/8,color: Theme.of(context).primaryColorLight,fontWeight: FontWeight.bold) ,)
                    )
                  ],),
                ],
              )),

          Container(height: cardSize/5,color: const Color(0xf9dcdcdc),

            child:  Center(
              child: Text('$centerText ',style: TextStyle(fontSize: cardSize/10,color: Colors.black,fontWeight: FontWeight.bold)),
            ),
          ),
//const CustomTable()
widget








        ],),

      ),

    );
  }
}
