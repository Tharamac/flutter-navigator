import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdParam{
  final String title;
  final String text;
  const ThirdParam(this.title,this.text);
}

class ThirdPage extends StatefulWidget{
  String title;
  String text;
  ThirdPage({this.title = "3rd Page", this.text = "NOOOOOOOOOo!" });

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Text(widget.text),
      ),
    );
  }
}