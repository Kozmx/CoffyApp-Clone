import 'package:coffy_clone/core/Project-Items.dart';
import 'package:coffy_clone/core/widgets/card_info.dart';
import 'package:coffy_clone/core/widgets/card_text.dart';
import 'package:flutter/material.dart';
class CommunicationView extends StatelessWidget {
  const CommunicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorItems.brightGrey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_outlined, color: ColorItems.whitecolor, size: 30),
        ),
        backgroundColor: ColorItems.blackcolor,
        centerTitle: true,
        title: Text("İletişim Tercihleri", style: TextStyle(color: ColorItems.whitecolor)),
      ),  
      body: Padding(
        padding: PaddingItems.topPadding,
        child: Column(
          children: [
            CardInfo(children: [
              ComWidget(text: "Eposta",about: "Kampanyalar ile ilgili e-posta almak istiyorum."),
              ComWidget(text: "Telefon",about: "Kampanyalar ile ilgili arama almak istiyorum."),
              ComWidget(text: "SMS",about: "Kampanyalar ile ilgili SMS almak istiyorum."),
              Padding(
                padding: PaddingItems.bottomPadding,
                child: CardText(text: "Kampanyalarla ilgili iletişim tercihlerini kapattığında siparişlerin ve üyelik ayarlarınla ilgili e-posta arama SMS almaya devam edebilirsin.",size: 14,),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class ComWidget extends StatefulWidget {
  final String text;
  final String about;
  const ComWidget({
    super.key,
    required this.text,
    required this.about,
  });

  @override
  State<ComWidget> createState() => _ComWidgetState();
}

class _ComWidgetState extends State<ComWidget> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: PaddingItems.topPadding,
              child: CardText(text: widget.text, fontWeight: FontWeight.bold, size: 20,),
            ),
            Padding(
              padding: PaddingItems.bottomPadding,
              child: CardText(text: widget.about, size: 14,),
            ),
          ],
        ),
        Switch(
          value: switchValue,
          onChanged: (value) {
            setState(() {
              switchValue = value;
            });
          },
        )
      ],
    );
  }
}