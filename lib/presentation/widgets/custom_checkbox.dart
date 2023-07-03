import 'package:flutter/material.dart';
class CustomCheckBox extends StatefulWidget {

  final String title;
  const CustomCheckBox({super.key,required this.title});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool ?value=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(

            value: value, onChanged: (val){
              value=val;
              setState(() {

              });

          }),  Expanded(
            child: Text(widget.title,
 ),
          )],
      ),
    );
  }
}
