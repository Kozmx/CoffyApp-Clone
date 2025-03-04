import 'package:coffy_clone/core/Account_Listtile_widget.dart';
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
        appBar: AppBar(backgroundColor: Colors.grey,),  
        body: AccountListtileWidget(iconss: Icons.account_balance_wallet_outlined, text: "Cüzdanım"),)
    );
  }
}
