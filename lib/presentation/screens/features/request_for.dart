import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/screens/features/bank/bank_details.dart';
import 'package:rajcop_official/presentation/screens/features/telecommunication/telecommunication.dart';
import 'package:rajcop_official/presentation/screens/features/transport/transport.dart';
import 'package:rajcop_official/presentation/widgets/custom_list_tile.dart';

class RequestFor extends StatelessWidget {
  const RequestFor({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Request For",style: Theme.of(context).textTheme.titleMedium,)),
      body:
      Column(children: [
          InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const BankDetail()));

            },


            child: const CustomListTile(iconData: Icons.account_balance_outlined,title: "Bank Detail",),


          ),
         InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (_)=>const Transport()));
             },
             child: const  CustomListTile(iconData: Icons.local_shipping,title: "Transport",)),




         InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (_)=>
             const   Telecommunication()
               ));
             },

             child: const  CustomListTile(iconData: Icons.cell_tower,title: "Telecommunications",)),





        ],)




    );
  }
}
