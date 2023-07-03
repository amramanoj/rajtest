import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/widgets/date_text_card.dart';
class Test extends StatelessWidget {

  const Test({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> list=["list a","list item 2","list item 3"];

    dynamic lists=list.map((e) => Text("a"+e.toString())).toList();
    print(lists);
    return Container(


    );
  }}