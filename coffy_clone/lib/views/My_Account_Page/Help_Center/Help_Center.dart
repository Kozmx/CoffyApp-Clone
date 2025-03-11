import 'package:coffy_clone/core/Project-Items.dart';
import 'package:coffy_clone/core/widgets/card_info.dart';
import 'package:coffy_clone/core/widgets/card_text.dart';
import 'package:flutter/material.dart';
class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: ColorItems.brightGrey,
            appBar: AppBar(backgroundColor: ColorItems.blackcolor, centerTitle: true,title:Text("Yardım Merkezi", style: TextStyle(color:ColorItems.whitecolor ),) ,),  
      body: Padding(
        padding: PaddingItems.topPadding,
        child: Column(
          children: [
          _HelpTile(title: "İletişim Bilgileri"),
          _HelpTile(title: "Sıkça Sorulan Sorular"),
          _HelpTile(title: "Müşteri Aydınlatma Metni"),
          Spacer(),
          Padding(
            padding: PaddingItems.bottom2xPadding,
            child: CardInfo(children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: PaddingItems.topPadding,
                          child: CardText(text: "Yardıma İhtiyacım Var", fontWeight: FontWeight.bold,),
                        ),
                        Padding(
                          padding: PaddingItems.bottomPadding,
                          child: CardText(text: "Whatsapp'tan destek alabilirsin.", size: 14,),
                        ), 
                      ],
                    ),  
                    ElevatedButton.icon(onPressed: () {}, label: Text("Whatsapp",style: TextStyle(color: ColorItems.whitecolor),), icon: Icon(Icons.phone,),style: ElevatedButton.styleFrom(backgroundColor: ColorItems.whatsappcolor,iconColor: ColorItems.whitecolor),)
                  ],
                ),
              
            ]),
          )
          ],
        ),
      ),
    );
  }
}

class _HelpTile extends StatelessWidget {
  final String title;
  const _HelpTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CardInfo(
      children: [
        ListTile(
          title: Text(title),
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
