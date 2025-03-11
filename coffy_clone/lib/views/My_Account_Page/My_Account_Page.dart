import 'package:coffy_clone/core/widgets/Account_Listtile_widget.dart';
import 'package:coffy_clone/core/Project-Items.dart';
import 'package:coffy_clone/core/widgets/card_info.dart';
import 'package:coffy_clone/core/widgets/card_text.dart';
import 'package:coffy_clone/views/My_Account_Page/Communication_Page.dart';
import 'package:flutter/material.dart';
class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorItems.brightGrey,
      appBar: AppBar(backgroundColor: ColorItems.blackcolor, centerTitle: true,title:Text("Hesabım", style: TextStyle(color:ColorItems.whitecolor ),) ,),  
      body:SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: PaddingItems.topPadding,
            child: CardInfo(children: [
            Padding(
              padding: PaddingItems.topPadding,
              child: CardText(text: "Kişisel Bilgiler",),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardText(text: "Adam Smith", fontWeight: FontWeight.bold,size: 20,),
                SaveButton()
              ],
            ),
            CardText(text: "24.03.1999",),
            Padding(
              padding: PaddingItems.bottomPadding,
              child: CardText(text: "AdamSmith@gmail.com",),
            ),
            ]),
          ) ,
          CardInfo(children: [
            Padding(
              padding: PaddingItems.topPadding,
              child: CardText(text: "Telefon Numarası"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardText(text: "0547856132",fontWeight: FontWeight.bold,
                  size: 20,),
                  SaveButton()
                ],
              ),
            )
          ]),
          Padding(
            padding: PaddingItems.symmetricPadding,
            child: ListTile(
              leading: Icon(Icons.group,size: 50,),
              iconColor: ColorItems.whitecolor,
              trailing: Icon(Icons.chevron_right),
              tileColor: ColorItems.orangecolor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              title: Text("Arkadaşına Öner", style: TextStyle(fontWeight: FontWeight.bold,color: ColorItems.whitecolor),),
              subtitle: Text("Şimdi Arkadaşını Davet Et, Sen de Ödüllerden Faydalan!",style: TextStyle(color: ColorItems.whitecolor),),
              onTap: () {},
              
            ),
          ),
            ...accountListItems.map((item) => AccountList(iconss: item.iconss, text: item.text, onTap: item.onTap)).toList(),
          
        ]),
      )
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Icon(Icons.edit_outlined),style: ElevatedButton.styleFrom(shape: CircleBorder(),
    iconColor:ColorItems.blackcolor, backgroundColor: ColorItems.whitecolor),);
  }
}

final List<AccountList> accountListItems = [
  AccountList(iconss: Icons.account_balance_wallet_outlined, text: "Coffy Cüzdan", onTap: (BuildContext context) => null),
  AccountList(iconss: Icons.wallet_giftcard_outlined, text: "Kampanyalar", onTap: (BuildContext context) => null),
  AccountList(iconss: Icons.favorite_border_outlined, text: "Favorilerim", onTap: (BuildContext context) => null),
  AccountList(iconss: Icons.storefront_outlined, text: "Şubeler", onTap: (BuildContext context) => null),
  AccountList(iconss: Icons.shopping_bag_outlined, text: "Önceki Siparişlerim", onTap: (BuildContext context) => null),
  AccountList(iconss: Icons.credit_card, text: "Kartlarım", onTap: (BuildContext context) => null),
  AccountList(
    iconss: Icons.alarm, 
    text: "İletişim Tercihleri", 
    onTap: (BuildContext context) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CommunicationView()),
    ),
  ),
  AccountList(iconss: Icons.center_focus_strong_outlined, text: "Yardım Merkezi", onTap: (BuildContext context) => null),
  AccountList(iconss: Icons.food_bank_outlined, text: "Alerjen Listesi", onTap: (BuildContext context) => null),
  AccountList(iconss: Icons.exit_to_app_outlined, text: "Çıkış Yap", onTap: (BuildContext context) => null)
];