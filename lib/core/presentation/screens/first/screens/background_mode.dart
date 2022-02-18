import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/presentation/screens/first/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/first/bloc/event.dart';
import 'package:untitled/core/presentation/widgets/button.dart';
import 'package:untitled/resources/images.dart';
import 'package:untitled/resources/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class BackgroundMode extends StatelessWidget {
  const BackgroundMode({Key? key}) : super(key: key);

  static const contentPadding =
      EdgeInsets.only(top: 230.0, bottom: 32.0, right: 16.0, left: 16.0);
  static const imageWidth = 282.0;
  static const spaceHeight = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: contentPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              VTServiceImages.mainLogo,
              width: imageWidth,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                VTButton(
                  text: AppLocalizations.of(context)!.startShift,
                  onTap: () => BlocProvider.of<FirstBloc>(context)
                      .add(FirstEvent.onStartDay()),
                ),
                SizedBox(
                  height: spaceHeight,
                ),
                VTButton(
                  onTap: () => launch("tel://88007750000"),
                  text: AppLocalizations.of(context)!.mangerConnect,
                  icon: Icons.phone,
                  backgroundColor: VTServiceTheme.white,
                  borderColor: VTServiceTheme.red,
                  textColor: VTServiceTheme.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
