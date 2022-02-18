import 'package:flutter/material.dart';
import 'package:untitled/resources/text_style.dart';
import 'package:untitled/resources/theme.dart';

class VTButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final IconData? icon;
  final String? text;
  final String? additionalText;
  final Function? onTap;

  const VTButton(
      {this.backgroundColor,
      this.borderColor,
      this.textColor,
      this.icon,
      this.onTap,
      this.text,
      this.additionalText,
      Key? key})
      : super(key: key);

  static const buttonHeight = 52.0;
  static const iconSize = 15.0;
  static const iconPadding = EdgeInsets.only(left: 8.0, right: 8.0);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
          height: buttonHeight,
          decoration: BoxDecoration(
            color: backgroundColor ?? VTServiceTheme.primaryBlue,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color:
                  borderColor ?? backgroundColor ?? VTServiceTheme.primaryBlue,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: textColor ?? VTServiceTheme.white,
                  size: iconSize,
                ),
              Padding(
                padding: iconPadding,
                child: Text(
                  text ?? '',
                  textAlign: TextAlign.center,
                  style: VTServiceStyle.buttonStyleW700(
                      color: textColor ?? VTServiceTheme.white),
                ),
              ),
            ],
          )),
    );
  }
}
