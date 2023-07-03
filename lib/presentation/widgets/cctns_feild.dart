import 'package:flutter/material.dart';
class CCTNSField extends StatelessWidget {
  const CCTNSField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      decoration: BoxDecoration(border: Border.all(
        color: Colors.black
      ),
      borderRadius: BorderRadius.circular(10.0)
      ),
      child: Row(children: [
        Radio(
            activeColor: Theme.of(context).primaryColor,
            value: 1, groupValue:1, onChanged: (value){}),
        const Text("CCTNS")
      ],),
    );
  }
}
