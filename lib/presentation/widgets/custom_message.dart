import 'package:flutter/material.dart';
class CustomMessage extends StatelessWidget {
  final String ? hintText;
  final String ?labelText;
  const CustomMessage({super.key, this.hintText='',this.labelText});

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode =  FocusNode();

    return Container(

   decoration: BoxDecoration(
     border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.circular(10.0)
   ),


      child:  Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: TextField(

focusNode: myFocusNode,
          style: const TextStyle(color: Colors.black,fontSize: 18.0,height: 1.2,),
decoration: InputDecoration(



border: InputBorder.none,
hintText: hintText,

  label: labelText!=null?Text(labelText??''):null,
  focusColor: Colors.red

),
          maxLines: 4,
          minLines: 4,
        ),
      ),
    );
  }
}



