import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/widgets/custom_button.dart';
import 'package:rajcop_official/presentation/widgets/custom_message.dart';
import 'package:rajcop_official/presentation/widgets/radio_feild.dart';
class RecordFeedBack extends StatelessWidget {
  const RecordFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Record Your Feedback"),),
      body: SingleChildScrollView(
        child: Container(

          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child:Column(
              children: [
            const   SizedBox(height: 10.0,),
              Align(
                  alignment:Alignment.centerLeft,child: Text("Your Experience",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),)),
              const CustomRadioField(list: ["Excellent","Very Good","Good","Not Good","Bad"],),
const Align(
    alignment: Alignment.centerLeft,
    child: Text("Your Message",style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),)),
const SizedBox(height: 10.0,),
const CustomMessage(hintText: "Type here ... ",),
              const SizedBox(height: 15.0,),
              const CustomButton(title: "Submit",)


            ],),

        ),
      ),
    );
  }
}
