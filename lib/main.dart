
import 'package:five_menus_in_drawer/pages/dialog_page.dart';
import 'package:five_menus_in_drawer/pages/hello_page.dart';
import 'package:five_menus_in_drawer/pages/home_page.dart';
import 'package:five_menus_in_drawer/pages/third_page.dart';
import 'package:flutter/material.dart';

import 'config/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "I'm Hungry",
      routes: {
        Routes.home : (context) => HomePage(),
        Routes.helloPage : (context) => HelloPage(),
        Routes.dialogPage : (context) => DialogPage(), 
      },
      onGenerateRoute: _regRoutesWithParams,
    );
  }

  Route _regRoutesWithParams(RouteSettings settings){
    if(settings.name == Routes.thirdPage){
      return MaterialPageRoute(builder: (context){
        ThirdParam param = settings.arguments;
        return ThirdPage(title: param.title, text: param.text);
      });
    }
  }
}