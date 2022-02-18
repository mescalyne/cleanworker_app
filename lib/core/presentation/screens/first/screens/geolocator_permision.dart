import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/presentation/screens/first/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/first/bloc/event.dart';
import 'package:untitled/core/presentation/widgets/button.dart';
import 'package:untitled/resources/text_style.dart';
import 'package:untitled/resources/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GeoPermitionScreen extends StatelessWidget {
  const GeoPermitionScreen({Key? key}) : super(key: key);

  static const contentPadding =
      EdgeInsets.only(top: 190.0, bottom: 32.0, right: 16.0, left: 16.0);
  static const imageContainerWidth = 64.0;
  static const imageSize = 30.0;
  static const titlePadding = EdgeInsets.only(top: 32.0);
  static const descriptionPadding =
      EdgeInsets.only(top: 16.0, left: 22.0, right: 22.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: contentPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  child: Icon(
                    Icons.location_pin,
                    size: imageSize,
                    color: VTServiceTheme.primaryBlue,
                  ),
                ),
                Container(
                  padding: titlePadding,
                  child: Text(
                    AppLocalizations.of(context)!.accessGeo,
                    style: VTServiceStyle.titleStyleW700(),
                  ),
                ),
                Container(
                  padding: descriptionPadding,
                  child: Text(
                    AppLocalizations.of(context)!.accessGeoDescr,
                    textAlign: TextAlign.center,
                    style: VTServiceStyle.textStyleW400(),
                  ),
                ),
              ],
            ),
            VTButton(
              text: AppLocalizations.of(context)!.accessGeoAccept,
              onTap: () => BlocProvider.of<FirstBloc>(context)
                  .add(FirstEvent.onCheckGeo()),
            ),
          ],
        ),
      ),
    );
  }
}
