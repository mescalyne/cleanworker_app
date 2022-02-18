import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/resources/images.dart';
import 'package:untitled/resources/text_style.dart';
import 'package:untitled/resources/theme.dart';

class OpenShiftQuestionScreen extends StatelessWidget {
  const OpenShiftQuestionScreen({Key? key}) : super(key: key);

  static const paddingContent =
      EdgeInsets.only(top: 92.0, left: 16.0, right: 16.0);
  static const heightSpace = 140.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: paddingContent,
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.openShiftQuestion,
              style: VTServiceStyle.titleStyleH2(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: VTServiceTheme.neutralGrey100,
                  )),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        VTServiceImages.fix,
                        width: 70.0,
                      ),
                    ),
                    SizedBox(
                      height: 16.84,
                    ),
                    Text(
                      AppLocalizations.of(context)!.openShiftQuestion,
                      style: VTServiceStyle.buttonStyleW700(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            InkWell(
              onTap: ()=>{},
              child: Container(
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: VTServiceTheme.neutralGrey100,
                    )),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          VTServiceImages.like,
                          width: 63.0,
                        ),
                      ),
                      SizedBox(
                        height: 16.84,
                      ),
                      Text(
                        AppLocalizations.of(context)!.allOkay,
                        style: VTServiceStyle.buttonStyleW700(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
