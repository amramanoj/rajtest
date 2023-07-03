import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';

class CustomListTile extends StatelessWidget {
 // final String imgSrc;
  final IconData iconData;
  final String title;
  const CustomListTile({super.key,required this.title,required this.iconData});
 @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context)/15,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(border: Border(
          bottom: BorderSide(color: Colors.black)
      )),
 child: Row(
        children: [
          Container(width: 35.0,height: double.infinity,
            margin: const EdgeInsets.all(15.0),

         //   decoration:  BoxDecoration(image: DecorationImage(image: AssetImage(imgSrc))),
            child: Icon(iconData,size:  screenHeight(context)/35,color: Theme.of(context).primaryColor,),
          ),
         Text(title,style: TextStyle(color: const Color(0xff110f0f),fontSize: screenHeight(context)/55,
          ),),
          const Spacer(),
          Icon(Icons.arrow_forward_ios,size: screenHeight(context)/45,color: Theme.of(context).primaryColor,),
          const SizedBox(width: 13.0,)
        ],
      ),
    );
  }
}
