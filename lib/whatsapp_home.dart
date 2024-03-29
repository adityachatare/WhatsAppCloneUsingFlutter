import 'package:flutter/material.dart';
import 'package:whatsapp_by_aditya/pages/call_screen.dart';
import 'package:whatsapp_by_aditya/pages/camera_screen.dart';
import 'package:whatsapp_by_aditya/pages/chat_screem.dart';
import 'package:whatsapp_by_aditya/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() { 
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text:"STATUS"),
            new Tab(text:"CALLS"),
          ],
        ),
        actions: <Widget>[new Icon(Icons.search),new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),new Icon(Icons.more_vert)],
      ),
      
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message,color: Colors.white,),
        onPressed: ()=> print("Open Chats"),
        
      ),
    );
  }
}