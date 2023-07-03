
import 'package:flutter/material.dart';
import 'package:rajcop_official/presentation/screens/features/request_for.dart';
import 'package:rajcop_official/presentation/screens/features/telecommunication/telecommunication.dart';
import 'package:rajcop_official/presentation/screens/features/transport/transport.dart';
import 'package:rajcop_official/presentation/screens/io_eo_dashboard/io_eo_dashboard.dart';
import 'package:rajcop_official/presentation/screens/record_feedback/record_feedback.dart';
import 'package:rajcop_official/presentation/screens/rms_dash_board/rms_dash_board.dart';

class CustomRoute{
  static const  String rmsDashboard="homePage";
  static const  String bankDetailPage="bankDetail";
  static const String transportPage="transportPage";
  static const String telecommunicationPage="telecommunication";
  static const String ioEoDashboard="ioEoDashBoard";
  static const String recordFeedBack="feedBack";
  static const String requestFor="requestFor";

 static  Route  route(RouteSettings settings){
   switch(settings.name) {
     case CustomRoute.rmsDashboard:
       return MaterialPageRoute(builder:(context)=>const RMSDashboard());
       case CustomRoute.bankDetailPage:
       return MaterialPageRoute(builder:(context)=>const Telecommunication());
       case CustomRoute.telecommunicationPage:
       return MaterialPageRoute(builder:(context)=>const Transport());
       case CustomRoute.ioEoDashboard:
       return MaterialPageRoute(builder:(context)=>const IoEoDashboard());
       case CustomRoute.recordFeedBack:
       return MaterialPageRoute(builder:(context)=>const RecordFeedBack());
       case CustomRoute.requestFor:
       return MaterialPageRoute(builder:(context)=>const RequestFor());
     default :
return MaterialPageRoute(builder: (_)=>const Scaffold(body: Center(child: Text("route not found"),),));
   }
}
}