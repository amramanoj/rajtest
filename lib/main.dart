import 'package:flutter/material.dart';
import 'package:rajcop_official/config/page_route.dart';
import 'package:rajcop_official/config/theme.dart';
import 'package:rajcop_official/presentation/screens/rms_dash_board/rms_dash_board.dart';
void main(){
  runApp(const Rajcop());


}
class Rajcop extends StatelessWidget {
  const Rajcop({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: customTheme(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomRoute.route,
      initialRoute: CustomRoute.rmsDashboard,
    );
  }
}


