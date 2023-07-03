import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height/17,

      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0))
          ),
          onPressed: (){}, child: Text("Submit",style: TextStyle(fontSize: MediaQuery.of(context).size.height/45),)),
    );
  }
}
