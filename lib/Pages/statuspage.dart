import 'package:flutter/material.dart';
import 'package:whatsappclonefinal/model/statusmodel.dart';


class statuspage extends StatelessWidget {
  const statuspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: AssetImage("ldrwhatsapp.jgp"),
          ),
          title: Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Tap to add status update',
            style: TextStyle(color: Colors.grey, fontSize: 15.0),
          ),
          onTap: () {
            print('My Own Status Detail Open');
          },
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recent updates',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(
                        statusData[i].avatar ?? "whatsappbg"),
                  ),
                  title: Text(
                    statusData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    statusData[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  onTap: () {
                    print('Status Detail Open');
                  },
                ),
                Divider(
                  height: 10.0,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
