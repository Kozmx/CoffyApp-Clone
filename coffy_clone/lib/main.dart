import 'package:coffy_clone/core/Account_Container_widget.dart';
import 'package:coffy_clone/core/Account_Listtile_widget.dart';
import 'package:coffy_clone/constants/Project-Items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
       home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(backgroundColor: ColorItems.blackcolor, centerTitle: true,title:Text("Hesabım", style: TextStyle(color:ColorItems.whitecolor ),) ,),  
        body: AccountContainerWidget()
        )
    );
  }
}
