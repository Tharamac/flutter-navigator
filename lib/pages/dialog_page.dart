import 'package:five_menus_in_drawer/config/routes.dart';
import 'package:five_menus_in_drawer/pages/third_page.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog Page Ja~~")),
      body: Center(
        child: RaisedButton(
          child: Icon(Icons.view_list),
          onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                content: const Text("Are You Hungry?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Yessssssss"),
                    onPressed: () => Navigator.of(context).pushNamed(Routes.thirdPage, arguments: ThirdParam("Welcome to Our Restaurant", "Just Kidding :P")),
                  ),
                  FlatButton(
                    child: Text("Nope"),
                    onPressed: () => Navigator.pop(context),
                  )
                ]
              );
            },
             
          ),
        ),
      ),
    );
    
  }
}