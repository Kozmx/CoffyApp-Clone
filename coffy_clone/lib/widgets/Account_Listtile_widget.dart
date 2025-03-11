import 'package:coffy_clone/constants/Project-Items.dart';
import 'package:flutter/material.dart';
class AccountList extends StatelessWidget {
  final IconData iconss;
  final String text;
  const AccountList({super.key, required this.iconss, required this.text,});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: PaddingItems.symmetricListtile,
      child: ListTile(
            leading: Icon(iconss,color: Colors.black,),
            title: Text(text, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
            onTap: () {},
            trailing: Icon(Icons.chevron_right,color: Colors.black,),
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            minVerticalPadding: 20,
            ),
    );
  }
}