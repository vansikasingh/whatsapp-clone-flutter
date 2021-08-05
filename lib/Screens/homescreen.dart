import 'package:flutter/material.dart';
import 'package:whatsappclonefinal/Pages/callpage.dart';
import 'package:whatsappclonefinal/Pages/chatpage.dart';
import 'package:whatsappclonefinal/Pages/statuspage.dart';



class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController= TabController(length:4, vsync:this, initialIndex:1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Whatsapp Clone"),
        actions:[
          IconButton(icon:Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value){
              print(value);
          },
            itemBuilder: (BuildContext context){
          return[
            PopupMenuItem(
                child: Text("New Group"),
                value: "New Group",
            ),
            PopupMenuItem(
              child: Text("New Broadcast"),
              value: "New Broadcast",
            ),
            PopupMenuItem(
              child: Text("Whatsapp Web"),
              value: "Whatsapp Web",
            ),
            PopupMenuItem(
              child: Text("Starred Messages"),
              value: "Starred Messages",
            ),
            PopupMenuItem(
              child: Text("Setting"),
              value: "Setting",
            ),
          ];
          },
          ),
        ],
        bottom: TabBar(
          controller:_tabController,
          indicatorColor:Colors.white,
          tabs:[
            Tab(
              icon:Icon(Icons.camera_alt),
            ),
            Tab(
              text:"CHATS",
            ),
            Tab(
              text:"STATUS",
            ),
            Tab(
              text:"CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:[
          Text("Camera"),
          chatpage(),
          statuspage(),
          callpage(),
        ]
      )
    );
  }
}
