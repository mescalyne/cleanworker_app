import 'package:flutter/material.dart';
import 'package:untitled/core/presentation/widgets/button.dart';
import 'package:untitled/resources/text_style.dart';

class VTInfoScreen extends StatelessWidget {
  final String caption;
  final String onTapCaption;
  final Function onTap;

  const VTInfoScreen({
    required this.caption,
    required this.onTapCaption,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  static const paddingContent =
      EdgeInsets.only(top: 192.0, bottom: 32.0, left: 16.0, right: 16.0);
  static const heightSpace = 120.0;
  static const imageWidth = 70.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: paddingContent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(caption,
              textAlign: TextAlign.center,
              style: VTServiceStyle.titleStyleH2()),
          VTButton(
            text: onTapCaption,
            onTap: () => onTap(),
          ),
        ],
      ),
    ));
  }
}
