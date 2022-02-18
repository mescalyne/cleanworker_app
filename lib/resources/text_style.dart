import 'package:flutter/material.dart';
import 'package:untitled/resources/theme.dart';

extension VTServiceStyle on TextStyle {
  static const fontFamilyRoboto = 'Roboto';

  static TextStyle buttonStyleW700({Color? color}) => TextStyle(
        fontFamily: fontFamilyRoboto,
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: color ?? VTServiceTheme.neutralGrey800,
        letterSpacing: 1.25,
      );
  static TextStyle titleStyleW700({Color? color}) => TextStyle(
        fontFamily: fontFamilyRoboto,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: color ?? VTServiceTheme.neutralGrey800,
        letterSpacing: 0.15,
      );
  static TextStyle textStyleW400({Color? color}) => TextStyle(
        fontFamily: fontFamilyRoboto,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: color ?? VTServiceTheme.neutralGrey800,
      );
  static TextStyle titleStyleH1({Color? color}) => TextStyle(
        fontFamily: fontFamilyRoboto,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: color ?? VTServiceTheme.neutralGrey800,
      );
  static TextStyle titleStyleH2({Color? color}) => TextStyle(
        fontFamily: fontFamilyRoboto,
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: color ?? VTServiceTheme.neutralGrey800,
      );

  static TextStyle labelStyleExtraBold({Color? color}) => TextStyle(
        fontFamily: fontFamilyRoboto,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: color ?? VTServiceTheme.neutralGrey800,
        letterSpacing: 1.0,
      );

  static TextStyle labelStyleSemiBold({Color? color}) => TextStyle(
        fontFamily: fontFamilyRoboto,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color ?? VTServiceTheme.neutralGrey400,
      );

  static TextStyle captionStyleW400({Color? color}) => TextStyle(
        fontFamily: fontFamilyRoboto,
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: color ?? VTServiceTheme.red,
        letterSpacing: 0.4,
      );
}
