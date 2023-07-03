import 'package:flutter/material.dart';
import 'package:rajcop_official/config/theme.dart';
class CustomDropDown extends StatefulWidget {
  final List<String> list;
 const CustomDropDown({super.key,required this.list});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String ? value;
  @override
  void initState() {
 value=widget.list.first;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context)/14,
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
        border: Border.all(color:Colors.grey),
        borderRadius: BorderRadius.circular(10.0),

      ),
      child: Row(
        children: [
         Expanded(
           flex: 10,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  value: value,

                  iconEnabledColor: Theme.of(context).primaryColor,

                  items:
widget.list.map((e) {
  return DropdownMenuItem(value: e, child:
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(e,style: const TextStyle(color: Colors.black,
    fontSize: 15.0
    ),

    ),
  ));

}).toList()
                  , onChanged: (value){

                    this.value=value;
                    setState(() {

                    });
              }),
            ),
          ),

 Expanded(
  flex: 2,
    child: Icon(Icons.refresh,color: Theme.of(context).primaryColor,))

        ],
      ),

    );
  }
}
