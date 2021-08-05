import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsappclonefinal/model/chatmodel2.dart';

class contactcard extends StatelessWidget {
  const contactcard({Key? key, required this.contact}) : super(key: key);
  final chatmodel2 contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading:CircleAvatar(
          radius:23,
          child: SvgPicture.asset("assets/person_black_36dp.svg", color:Colors.white, height:30, width:30),
          backgroundColor:Colors.blueGrey[200],
        ),
        title:Text("Vansika Singh", style: TextStyle(
          fontSize:15,
          fontWeight:FontWeight.bold,
        ),
        ),
        subtitle:Text(
            "Student At Bennett University",
          style: TextStyle (
           fontSize:13,
          ),
        ),
      ),
    );
  }
}
