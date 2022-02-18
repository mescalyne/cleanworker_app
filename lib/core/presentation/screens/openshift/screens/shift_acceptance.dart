import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/event.dart';
import 'package:untitled/core/presentation/widgets/button.dart';
import 'package:untitled/resources/images.dart';
import 'package:untitled/resources/text_style.dart';
import 'package:untitled/resources/theme.dart';

class ShiftAcceptanceScreen extends StatelessWidget {
  final String? changerName;
  final String? changerMessage;
  final String? changerPhotoUrl;

  ShiftAcceptanceScreen(
      {required this.changerName,
      required this.changerMessage,
      required this.changerPhotoUrl,
      Key? key})
      : super(key: key);

  static const paddingContent =
      EdgeInsets.only(top: 92.0, bottom: 32.0, left: 16.0, right: 16.0);
  static const heightSpace = 140.0;
  static const widthAvatar = 50.0;
  static const paddingAvatar = EdgeInsets.only(right: 10.0);
  static const messageMargin = EdgeInsets.only(right: 64.0);
  static const messagePadding =
      EdgeInsets.only(top: 12.0, bottom: 12.0, left: 16.0, right: 16.0);

  var isRecievedAvatar = false;

  @override
  Widget build(BuildContext context) {
    //TODO когда на сервере появться аватарки разкоменти
    final isRecievedAvatar = false; //changerPhotoUrl != null;

    return Scaffold(
        body: Padding(
      padding: paddingContent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(AppLocalizations.of(context)!.shiftAcceptance,
                  style: VTServiceStyle.titleStyleH1()),
              SizedBox(
                height: heightSpace,
              ),
              changerName == null
                  ? Column(
                      children: [
                        Text(
                          'Не удалось открыть смену',
                          style: VTServiceStyle.textStyleW400(),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                          onTap: () => BlocProvider.of<OpenshiftBloc>(context)
                              .add(OpenshiftEvent.onLoad()),
                          child: Container(
                              child: Text(
                            'Повторить попытку',
                            style: VTServiceStyle.buttonStyleW700(
                                color: VTServiceTheme.primaryBlue),
                          )),
                        )
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: paddingAvatar,
                              width: widthAvatar,
                              child: isRecievedAvatar
                                  ? Image.network('${changerPhotoUrl}')
                                  : Image.asset(VTServiceImages.circleAvatar),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.yourChanger,
                                  style: VTServiceStyle.captionStyleW400(
                                      color: VTServiceTheme.neutralGrey400),
                                ),
                                Text(changerName ?? '...',
                                    style: VTServiceStyle.labelStyleSemiBold()),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: VTServiceTheme.neutralGrey00,
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: messageMargin,
                          padding: messagePadding,
                          child: Text(
                            changerMessage ?? '...',
                            style: VTServiceStyle.textStyleW400(),
                            maxLines: 100,
                          ),
                        ),
                      ],
                    ),
            ],
          ),
          VTButton(
            text: AppLocalizations.of(context)!.letStart,
            backgroundColor: changerName == null
                ? VTServiceTheme.lightBlue
                : VTServiceTheme.primaryBlue,
            onTap: () => changerName == null
                ? {}
                : BlocProvider.of<OpenshiftBloc>(context)
                    .add(OpenshiftEvent.onAcceptance()),
          ),
        ],
      ),
    ));
  }
}
