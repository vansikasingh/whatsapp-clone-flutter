import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsappclonefinal/customUI/ownmessagecard.dart';
import 'package:whatsappclonefinal/customUI/replycard.dart';
// import 'package:emoji_picker/emoji_picker.dart';
import 'package:whatsappclonefinal/model/chatmodel.dart';

class individualpage extends StatefulWidget {
  const individualpage({Key? key, required this.chatModel}) : super(key: key);
  final chatmodel chatModel;

  @override
  _individualpageState createState() => _individualpageState();
}

class _individualpageState extends State<individualpage> {
  bool show= false;
  FocusNode focusNode=FocusNode();
  // TextEditingController _controller= TextEditingController();
  @override
  void initState(){
    super.initState();
    focusNode.addListener((){
      if(focusNode.hasFocus)
        {
          setState((){
            show=false;
          });
        }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.asset(
        //   "assets/whatsappbg.png",
        //   height:MediaQuery.of(context).size.height,
        //   width:MediaQuery.of(context).size.width,
        //   fit:BoxFit.cover,
        // ),
        Scaffold(
          backgroundColor:Colors.blueGrey,
            appBar: AppBar(
                leadingWidth: 70,
                titleSpacing: 0,
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 24,
                      ),
                      CircleAvatar(
                        child: SvgPicture.asset(
                          widget.chatModel.isGroup
                              ? "assets/groups_black_36dp.svg"
                              : "assets/person_black_36dp.svg",
                          color: Colors.white,
                          height: 36,
                          width: 36,
                        ),
                        radius: 20,
                        backgroundColor: Colors.blueGrey,
                      ),
                    ],
                  ),
                ),
                title: InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.chatModel.name, style: TextStyle(
                          fontSize: 18.5,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text("last seen today at 12:05", style: TextStyle(
                          fontSize: 13,
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
            IconButton(
            icon:Icon(Icons.videocam),
            onPressed: () {}
        ),
        IconButton(
        icon:Icon(Icons.call),
        onPressed:(){}
        ),
        PopupMenuButton<String>(
        onSelected: (value){
        print(value);
        },
        itemBuilder: (BuildContext context){
        return[
        PopupMenuItem(
        child: Text("View Contact"),
        value: "View Contact",
        ),
        PopupMenuItem(
        child: Text("Media, links, and docs"),
        value: "Media, links, and docs",
        ),
        PopupMenuItem(
        child: Text("Whatsapp Web"),
        value: "Whatsapp Web",
        ),
        PopupMenuItem(
        child: Text("Search"),
        value: "Search",
        ),
        PopupMenuItem(
        child: Text("Mute Notification"),
        value: "Mute Notification",
        ),
          PopupMenuItem(
            child: Text("Wallpaper"),
            value: "Wallpaper",
          ),
        ];
        },
        ),
        ],
        ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width,
            child:WillPopScope(
              child: Stack(
                children:[
                  Container(
                    height:MediaQuery.of(context).size.height -140,
                    child: ListView(
                      shrinkWrap: true,
                      children:[
                        ownmessagecard(),
                        replycard(),
                        ownmessagecard(),
                        replycard(),
                        ownmessagecard(),
                        replycard(),
                        ownmessagecard(),
                        replycard(),
                        ownmessagecard(),
                        replycard(),
                        ownmessagecard(),
                        replycard(),
                        ownmessagecard(),
                        replycard(),
                      ],
                    ),
                  ),
                  Align(
                    alignment:Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                            children:[
                              Container(
                                width:MediaQuery.of(context).size.width - 60,
                                  child: Card(
                                    margin:EdgeInsets.only(left:2, right:2, bottom:8),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                      child: TextFormField(
                                        // controller:_controller,
                                        focusNode: focusNode,
                                        textAlignVertical: TextAlignVertical.center,
                                        keyboardType:TextInputType.multiline,
                                        maxLines:5,
                                        minLines:1,
                                        decoration:InputDecoration(
                                          border:InputBorder.none,
                                          hintText:"Type a message",
                                          hintStyle: TextStyle(color:Colors.grey),
                                          prefixIcon: IconButton(icon:Icon(
                                            Icons.emoji_emotions_outlined,
                                          ),
                                            onPressed:() {
                                            focusNode.unfocus();
                                            focusNode.canRequestFocus=false;
                                            setState((){
                                              show= !show;
                                            });
                                            },
                                          ),
                                          suffixIcon:Row(
                                            mainAxisSize:MainAxisSize.min,
                                            children:
                                              [
                                                IconButton(
                                                  icon:Icon(Icons.attach_file),
                                                  onPressed:(){
                                                    showModalBottomSheet(backgroundColor:Colors.transparent, context: context, builder: (builder)=>bottomsheet());
                                                  },
                                                ),
                                                IconButton(
                                                  icon:Icon(Icons.camera_alt),
                                                  onPressed: (){},
                                                ),
                                              ],
                                          ),
                                          contentPadding:EdgeInsets.all(5),
                                        ),
                                      ),
                                  ),
                              ),
                              Padding(
                                padding:const EdgeInsets.only(bottom:8, right:2,left:2,),
                                child: CircleAvatar(
                                  backgroundColor:Color(0xff128C7E),
                                  radius: 25,
                                  child:IconButton(icon:Icon(Icons.mic, color:Colors.white,
                                  ),
                                  onPressed: () {},
                                  ),
                                ),
                              ),
                        ],
                        ),
                        // show?emojiSelect():Container(),
                      ],
                    ),
                  ),
                ],
              ),
              onWillPop:(){
                if (show) {
                  setState(() {
                    show = false;
                  });
                }
                else{
                  Navigator.pop(context);
                }
                return Future.value(false);
              },
            ),
          ),
        ),
      ],
    );
    }
    Widget bottomsheet()
    {
      return Container(
        height:278,
        width:MediaQuery.of(context).size.width,
        child:Card(
          margin:EdgeInsets.all(18),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal:10, vertical:20),
            child: Column(
              children:[
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                  iconcreation(Icons.insert_drive_file, Colors.indigo, "Document"),
                  SizedBox(
                    width:40,
                  ),
                  iconcreation(Icons.camera_alt, Colors.pink, "Camera"),
                  SizedBox(
                    width:40,
                  ),
                  iconcreation(Icons.insert_photo, Colors.purple, "Gallery"),
                ],
                ),
                SizedBox(
                  height:30,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    iconcreation(Icons.headset, Colors.orange, "Audio"),
                    SizedBox(
                      width:40,
                    ),
                    iconcreation(Icons.location_pin, Colors.pink, "Location"),
                    SizedBox(
                      width:40,
                    ),
                    iconcreation(Icons.person, Colors.blue, "Contact"),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
    Widget iconcreation(IconData icon, Color color, String text)
    {
      return InkWell(
        onTap:(){},
        child: Column(
          children:[
            CircleAvatar(
              radius:30,
              backgroundColor:color,
              child:Icon(
                icon,
                size:29,
                color:Colors.white,
              ),
            ),
            SizedBox(
              height:5,
            ),
            Text(text, style:TextStyle(
              fontSize:12,
            ),
            ),
          ],
        ),
      );
    }
    // Widget emojiSelect()
    // {
    //   return EmojiPicker(
    //     rows:4,
    //       columns:7,
    //       onEmojiSelected:(emoji, category) {
    //     print(emoji);
    //     setState((){
    //       _controller.text=_controller.text + emoji.emoji;
    //     });
    //   },
    //   );
    // }
}
