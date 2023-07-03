import 'package:flutter/material.dart';

class DateTextCard extends StatelessWidget {

 final  String heading;
  final String dataString;
 final IconData ?iconData;
  const DateTextCard({super.key, this.iconData,required this.heading,required this.dataString});

  @override
  Widget build(BuildContext context) {
    return Card(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 10.0,
      shadowColor: Colors.black,
      child:


      Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Container(

 decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black54)

            ),

            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Text(heading,style: TextStyle(color: Theme.of(context).primaryColor,),),
                    const SizedBox(height: 5.0,),
                    Text(dataString,style: const TextStyle(color: Colors.black,))

                  ],),
              ),

              Container(),Spacer(),Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: Icon(iconData,size: MediaQuery.of(context).size.height/25,),

              )


            ],),

          ),
        ],
      ),
    );
  }
}
