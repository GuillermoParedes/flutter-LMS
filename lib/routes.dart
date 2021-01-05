
import 'package:flutter/material.dart';
import 'package:flutter_lms/modules/home/presentation/home_screen.dart';
import 'package:flutter_lms/modules/signin/presentation/signin_screen.dart';
import 'package:flutter_lms/shared/style/theme.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    '/HomePage': (BuildContext context) => HomeScreen()
  };

  Routes() {
    runApp(MaterialApp(
      title: 'LMS',
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      theme: appTheme,
      routes: routes,

    ));
  }
}