import 'package:flutter/material.dart';
import 'package:flutter_drawer/main.dart';




class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),

      ),
      body: Container(
        child: Center(
          child: Text("Setting Page...."),
        ),
      ),

    );
  }
}


