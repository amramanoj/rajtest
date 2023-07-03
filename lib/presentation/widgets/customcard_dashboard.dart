import 'package:flutter/material.dart';

class DashBoardCard extends StatelessWidget {
 
  final String title;
  final String image;
  final int gap;
 Function onclick;
  
 DashBoardCard({super.key,required this.title,required this.image,this.gap=0, required this.onclick});

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    double cardSize=screenWidth>screenHeight?screenWidth/3:screenWidth/2.3;
    return
     InkWell(
        onTap: (){
         onclick();

        },
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Color(0xffababab), width: 2.0),
          ),
          color: const Color(0xffffffff),
shadowColor: Colors.black,

          elevation: 14.0,
          child: Container(

            width: cardSize,
            height:cardSize,
            decoration: const BoxDecoration(

            ),
            child: Container(
              margin: EdgeInsets.only(bottom: cardSize/5.0),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
                children: [

                Container(
                height: cardSize/3.3,
                width: cardSize/3.3,
                decoration:BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))
                ),
              ),
     SizedBox(height: 10.0,),
     Text(title,style:  TextStyle(color:const  Color(0xff0922af),fontWeight: FontWeight.bold,fontSize: cardSize/10),)


              ],),
            ),

          ),

        ),
      );
  }
}
