import 'package:flutter/material.dart';
class CustomTable extends StatelessWidget {
  const CustomTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Row(children: [

      Expanded(child: Column(children: [

       const Expanded(
         flex: 1,
         child: SizedBox(
           width: double.infinity,
           child: Center(
             child: Text("For Approval",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),


             ),
           ),
         ),

       ),
        Container(color: Colors.black,height: 1.0,),



       Expanded(
         flex: 2,
         child: SizedBox(
             width: double.infinity,
             child: Row(
               children: [
              Expanded(child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [const Text("0"),Text("SHO",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),],)),

                 Container(color: Colors.black,width: 1.0,),

                 Expanded(child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [const Text("0"),Text("DNO",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),],)),
               ],

             )


         ),
       ),



      ],)),
      Container(color: Colors.black,width: 1.0,),
      Expanded(child: Container(
        child: Column(children: [

        const Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: Center(

              child: Text("Response",style: TextStyle(color: Color(0xecf5af0a),fontWeight: FontWeight.bold),

              ),
            ),
          ),
        ),
          Container(color: Colors.black,height: 1.0,),



        Expanded(
          flex: 2,
          child: SizedBox(
            width: double.infinity,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("0"),Text("Agencies",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),)
              ],
            ),

          ),
        ),



      ],),))

    ],));
  }
}
