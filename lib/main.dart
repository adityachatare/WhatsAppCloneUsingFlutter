import 'package:flutter/material.dart';
import 'package:whatsapp_by_aditya/whatsapp_home.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) { 
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      home: WhatsAppHome(),
    );
  }

}