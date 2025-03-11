import 'package:coffy_clone/core/Project-Items.dart';
import 'package:flutter/material.dart';
class CardText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? size;
  const CardText({
    super.key,
    required this.text,
    this.fontWeight,
    this.size,

  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: PaddingItems.symmetricText,
        child: Text(text,style: TextStyle(fontWeight:fontWeight ?? FontWeight.w300,
        fontSize: size ?? 16,
        ),),
      ));
  }
}