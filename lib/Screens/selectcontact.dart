import 'package:flutter/material.dart';
import 'package:whatsappclonefinal/customUI/contactcard.dart';
import 'package:whatsappclonefinal/model/chatmodel.dart';
import 'package:whatsappclonefinal/model/chatmodel2.dart';
class selectcontact extends StatefulWidget {
  const selectcontact({Key? key}) : super(key: key);

  @override
  _selectcontactState createState() => _selectcontactState();
}

class _selectcontactState extends State<selectcontact> {
  @override
  Widget build(BuildContext context) {
    List<chatmodel2>contacts=[
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
      chatmodel2(
        name:"Vansika Singh",
        status:"Student at Bennett University",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title:Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Text(
              "Select Contact",
              style:TextStyle(
              fontSize:19,
                fontWeight:FontWeight.bold,
              ),
            ),
            Text("256 Contacts",
            style:TextStyle(
              fontSize:13,
            ),
            ),
          ],
        ),
        actions:[
          IconButton(icon:Icon(
            Icons.search,
            size:26,
          ),
              onPressed: () {},
              ),
          PopupMenuButton<String>(
            onSelected: (value){
              print(value);
            },
            itemBuilder: (BuildContext context){
              return[
                PopupMenuItem(
                  child: Text("Invite a Friend"),
                  value: "Invite a Friend",
                ),
                PopupMenuItem(
                  child: Text("Contacts"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                ),
              ];
            },
          ),
        ],
      ),
      body:ListView.builder(
        itemCount:contacts.length,
        itemBuilder: (context, index)=>contactcard(contact: contacts[index]),
      ),
    );
  }
}
