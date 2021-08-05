import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsappclonefinal/Screens/individualpage.dart';
import 'package:whatsappclonefinal/model/chatmodel.dart';

class customcard extends StatelessWidget {
  const customcard({Key? key, required this.chatModel}) : super(key: key);
  final chatmodel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => individualpage(
          chatModel:chatModel)
      )
      );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius:30,
              child: SvgPicture.asset(
                chatModel.isGroup? "assets/groups_black_36dp.svg" : "assets/person_black_36dp.svg",
              color:Colors.white,
              height:37,
              width:37,
              ),
            ),
            title: Text(
              chatModel.name,
              style:TextStyle(
              fontSize:16,
              fontWeight:FontWeight.bold,
            ),
            ),
            trailing:Text(chatModel.time),
            subtitle: Row(
              children:[
                Icon(Icons.done_all),
                SizedBox(
                  width:3
                ),
                Text(
                  chatModel.currentMessage,
                  style:TextStyle(
                    fontSize:13,
                  ),
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(right:20, left:80),
            child: Divider(
              thickness:1,
            ),
          )
        ],
      ),
    );
  }
}
