import 'package:coffy_clone/core/widgets/Account_Listtile_widget.dart';
import 'package:coffy_clone/core/Project-Items.dart';
import 'package:coffy_clone/core/widgets/card_info.dart';
import 'package:coffy_clone/core/widgets/card_text.dart';
import 'package:flutter/material.dart';
class AccountContainerWidget extends StatelessWidget {
  const AccountContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorItems.brightGrey,
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
            ...accountListItems.map((item) => AccountList(iconss: item.iconss, text: item.text)).toList(),
          
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
  AccountList(iconss: Icons.account_balance_wallet_outlined, text: "Coffy Cüzdan"),
  AccountList(iconss: Icons.wallet_giftcard_outlined, text: "Kampanyalar"),
  AccountList(iconss: Icons.favorite_border_outlined, text: "Favorilerim"),
  AccountList(iconss: Icons.storefront_outlined, text: "Şubeler"),
  AccountList(iconss: Icons.shopping_bag_outlined, text: "Önceki Siparişlerim"),
  AccountList(iconss: Icons.credit_card, text: "Kartlarım"),
  AccountList(iconss: Icons.alarm, text: "İletişim Tercihleri"),
  AccountList(iconss: Icons.center_focus_strong_outlined, text: "Yardım Merkezi"),
  AccountList(iconss: Icons.food_bank_outlined, text: "Alerjen Listesi"),
  AccountList(iconss: Icons.exit_to_app_outlined, text: "Çıkış Yap"),
];