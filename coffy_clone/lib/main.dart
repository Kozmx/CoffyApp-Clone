
import 'package:coffy_clone/core/Project-Items.dart';
import 'package:flutter/material.dart';
import 'package:coffy_clone/views/My_Account_Page/My_Account_Page.dart';

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
        body: const AccountContainerWidget()
        )
    );
  }
}
