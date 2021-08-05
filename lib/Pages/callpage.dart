import 'package:flutter/material.dart';
import 'package:whatsappclonefinal/model/callmodel.dart';

class callpage extends StatefulWidget {
  const callpage({Key? key}) : super(key: key);

  @override
  _callpageState createState() => _callpageState();
}

class _callpageState extends State<callpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: callData.length,
          itemBuilder: (context, i) => Column(
            children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(
                      callData[i].avatar ?? "ldrwhatsapp.jgp"),
                ),
                title: Text(
                  callData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Container(
                      child: callData[i].callType,
                    ),
                    Text(
                      callData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.call,
                  size: 25,
                  color: Theme.of(context).primaryColor,
                ),
                onTap: () {
                  print('Call Detail Open');
                },
              )
            ],
          )),
    );
  }
}
