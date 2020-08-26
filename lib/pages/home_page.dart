import 'package:five_menus_in_drawer/config/routes.dart';
import 'package:five_menus_in_drawer/pages/third_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is home page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.airline_seat_legroom_normal),
              title: Text("Hello"),
              onTap: () => {
                Navigator.of(context).pushNamed(Routes.helloPage)
              }
            ),
            ListTile(
              leading: const Icon(Icons.fastfood),
              title: Text("I want to EaT"),
              onTap: () => {
                Navigator.of(context).pushNamed(Routes.dialogPage)
              }
            ),
            ListTile(
              leading: const Icon(Icons.filter_4),
              title: Text("C R I N G E"),
              onTap: () => {
                Navigator.of(context).pushNamed(Routes.thirdPage, arguments: ThirdParam("C R I N G E", "Yeah!"))
              }
            ),
            ListTile(
              leading: const Icon(Icons.grade),
              title: Text("T R A P"),
              onTap: () => {
                Navigator.of(context).pushNamed(Routes.thirdPage, arguments: ThirdParam("This is a trap", "F A R E W E L L !!!!"))
              }
            ),
            
            
          ],
        ),
      ),
    );
  }
}