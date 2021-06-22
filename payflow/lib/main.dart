import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/shared/themes/appcolors.dart';

//import 'modules/splash/splash_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payflow',
      theme: ThemeData(      
        primaryColor: AppColors.primary,
      ),
      home: LoginPage(),
    );
  }
}

