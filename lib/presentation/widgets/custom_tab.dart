
import 'package:flutter/material.dart';
class CustomTab extends StatelessWidget {
  const CustomTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [




          Expanded(
            child: Container(padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
              margin: const EdgeInsets.all(5.0)
              ,decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(20.0)),child: const Center(child: Text("Request Detail",style: TextStyle(fontSize: 12.0,color: Colors.white),)),
            ),
          ),
          Expanded(
            child: Container(padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
              margin: const EdgeInsets.all(5.0)
              ,decoration: BoxDecoration(color:const  Color(0xc77d8382),borderRadius: BorderRadius.circular(20.0)),child: const Center(child: Text("Account Number",style: TextStyle(fontSize: 12.0,color: Colors.black),)),
            ),
          ),

          Expanded(
            child: Container(padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
              margin: const EdgeInsets.all(5.0)
              ,decoration: BoxDecoration(color:const Color(0xc77d8382),borderRadius: BorderRadius.circular(20.0)),child: const Center(child: Text("Settings",style: TextStyle(fontSize: 12.0,color: Colors.black),)),
            ),
          ),










        ],
      ),
    );
  }
}
