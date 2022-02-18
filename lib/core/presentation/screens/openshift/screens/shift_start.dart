import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/event.dart';
import 'package:untitled/core/presentation/widgets/button.dart';
import 'package:untitled/resources/images.dart';
import 'package:untitled/resources/text_style.dart';


class ShiftStartScreen extends StatelessWidget {
  ShiftStartScreen({Key? key}) : super(key: key);

  static const paddingContent =
      EdgeInsets.only(top: 92.0, bottom: 32.0, left: 16.0, right: 16.0);
  static const heightSpace = 120.0;
  static const imageWidth = 70.0;

  @override
  Widget build(BuildContext context) {
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
              Image.asset(
                VTServiceImages.cameraLogo,
                width: imageWidth,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                AppLocalizations.of(context)!.makingPhotoDescription,
                textAlign: TextAlign.center,
                style: VTServiceStyle.buttonStyleW700(),
              ),
            ],
          ),
          VTButton(
            text: AppLocalizations.of(context)!.letProceed,
            onTap: () => BlocProvider.of<OpenshiftBloc>(context)
                .add(OpenshiftEvent.onMakeReport()),
          ),
        ],
      ),
    ));
  }
}
