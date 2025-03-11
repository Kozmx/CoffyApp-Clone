import 'package:coffy_clone/core/Project-Items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CardInfo extends StatelessWidget {
  final List<Widget> children;
  final Color? backgroundColor;
  const CardInfo({
    super.key, required this.children,this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingItems.symmetricPadding,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor ?? ColorItems.whitecolor,
        ),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: children, 
            ),
        ),
      
      );
  }
}

