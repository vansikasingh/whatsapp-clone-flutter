import 'package:flutter/material.dart';
import 'package:whatsappclonefinal/Screens/selectcontact.dart';
import 'package:whatsappclonefinal/customUI/customcard.dart';
import 'package:whatsappclonefinal/model/chatmodel.dart';

class  chatpage extends StatefulWidget {
  chatpage ({Key? key}) : super(key: key);

  @override
  _chatpageState createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  List<chatmodel> chats= [
    chatmodel(
        name:"Vansika",
        isGroup: false,
        currentMessage: "hello",
        time:"18:30",
        icon:"person_black_36dp.svg",
        ),
    chatmodel(
      name:"Phy Project",
      isGroup: true,
      currentMessage: "hello",
      time:"12:30",
      icon:"groups_black_36dp.svg",
    ),
    chatmodel(
      name:"Riya",
      isGroup: false,
      currentMessage: "hello",
      time:"17:30",
      icon:"person_black_36dp.svg",
    ),
    chatmodel(
      name:"Ayushi",
      isGroup: false,
      currentMessage: "hello",
      time:"20:30",
      icon:"person_black_36dp.svg",
    ),
    chatmodel(
      name:"Ayushi",
      isGroup: false,
      currentMessage: "hello",
      time:"20:30",
      icon:"person_black_36dp.svg",
    ),
    chatmodel(
      name:"Ayushi",
      isGroup: false,
      currentMessage: "hello",
      time:"20:30",
      icon:"person_black_36dp.svg",
    ),
    chatmodel(
      name:"Ayushi",
      isGroup: false,
      currentMessage: "hello",
      time:"20:30",
      icon:"person_black_36dp.svg",
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        onPressed:() {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder)=>selectcontact()
          ),
          );
        },
        child:Icon(Icons.chat),
      ),
      body:ListView.builder(
itemCount:chats.length,
        itemBuilder:(context,index)=>customcard(chatModel:chats[index]),
      ),
    );
  }
}
