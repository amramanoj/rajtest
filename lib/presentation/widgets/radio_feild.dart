import 'package:flutter/material.dart';
class CustomRadioField extends StatefulWidget {

  final List<String> list;
  const CustomRadioField({super.key,required this.list});

  @override
  State<CustomRadioField> createState() => _CustomRadioFieldState();
}

class _CustomRadioFieldState extends State<CustomRadioField> {
 int radioGroupValue=-1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.30,
      width: MediaQuery.of(context).size.width,

      child:  ListView.builder(
        itemCount: widget.list.length,
          itemBuilder: (context,index){
        return
        Row(children: [
          Radio(
              activeColor: Theme.of(context).primaryColor,
              value: index, groupValue:radioGroupValue, onChanged: (value){
                radioGroupValue=index;
                setState(() {

                });
          }),
          const SizedBox(width: 7.0,),
         Text(widget.list[index],style: const TextStyle(fontSize: 18.0),)


        ],);


      })

    );
  }
}
