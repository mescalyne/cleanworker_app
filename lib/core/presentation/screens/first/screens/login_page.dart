import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:untitled/core/presentation/screens/first/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/first/bloc/event.dart';
import 'package:untitled/core/presentation/widgets/button.dart';
import 'package:untitled/resources/text_style.dart';
import 'package:untitled/resources/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool isActiveButton = false;

  void validate() {
    if (phoneController.text.length != 12)
      isActiveButton = false;
    else if (passwordController.text.isEmpty)
      isActiveButton = false;
    else
      isActiveButton = true;
    setState(() {});
  }

  static const contentPadding =
      EdgeInsets.only(top: 92.0, bottom: 32.0, right: 16.0, left: 16.0);
  static const titlePadding =
      EdgeInsets.only(bottom: 53.0, left: 22.0, right: 22.0);
  static const descriptionPadding = EdgeInsets.only(bottom: 7.0, top: 11.0);
  static const containerHeight = 48.0;
  static const containerPadding = EdgeInsets.only(bottom: 6.0);
  static const containerMargin = EdgeInsets.only(left: 16.0);
  static const buttonPadding = EdgeInsets.only(bottom: 12.0);
  static const spaceHeight = 24.0;

  @override
  Widget build(BuildContext context) {
    phoneController.text = '+79009009999';
    passwordController.text = 'XYnRYWQO';
    isActiveButton = true;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: contentPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: titlePadding,
                child: Text(
                  AppLocalizations.of(context)!.welcome,
                  style: VTServiceStyle.titleStyleH1(),
                ),
              ),
              Container(
                padding: descriptionPadding,
                child: Text(
                  AppLocalizations.of(context)!.login,
                  style: VTServiceStyle.labelStyleExtraBold(),
                ),
              ),
              Container(
                height: containerHeight,
                padding: containerPadding,
                decoration: BoxDecoration(
                  color: VTServiceTheme.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: VTServiceTheme.darkWhite,
                    width: 0.5,
                  ),
                ),
                child: TextFormField(
                  controller: phoneController,
                  onChanged: (_) => validate(),
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.inputLogin,
                    hintStyle: VTServiceStyle.labelStyleSemiBold(),
                    border: InputBorder.none,
                    contentPadding: containerMargin,
                  ),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    PhoneInputFormatter(),
                  ],
                  style: VTServiceStyle.labelStyleSemiBold(),
                ),
              ),
              Container(
                padding: descriptionPadding,
                child: Text(
                  AppLocalizations.of(context)!.password,
                  style: VTServiceStyle.labelStyleExtraBold(),
                ),
              ),
              StreamBuilder<bool>(
                  initialData: false,
                  stream:
                      BlocProvider.of<FirstBloc>(context).isIncorrectPassword,
                  builder: (context, snapShot) {
                    bool incorrectPass = snapShot.data ?? false;
                    return Column(
                      children: [
                        Container(
                          padding: containerPadding,
                          height: containerHeight,
                          decoration: BoxDecoration(
                            color: VTServiceTheme.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: incorrectPass
                                  ? VTServiceTheme.red
                                  : VTServiceTheme.darkWhite,
                              width: 0.5,
                            ),
                          ),
                          child: TextFormField(
                            controller: passwordController,
                            onChanged: (_) => validate(),
                            decoration: InputDecoration(
                              hintText:
                                  AppLocalizations.of(context)!.inputPassword,
                              hintStyle: VTServiceStyle.labelStyleSemiBold(
                                  color: incorrectPass
                                      ? VTServiceTheme.red
                                      : null),
                              border: InputBorder.none,
                              contentPadding: containerMargin,
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(12),
                            ],
                            style: VTServiceStyle.labelStyleSemiBold(),
                          ),
                        ),
                        if (incorrectPass)
                          Container(
                              padding: EdgeInsets.only(top: 6.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                AppLocalizations.of(context)!.incorrectPassword,
                                style: VTServiceStyle.captionStyleW400(),
                              ))
                      ],
                    );
                  }),
              SizedBox(
                height: spaceHeight,
              ),
              Padding(
                padding: buttonPadding,
                child: VTButton(
                  text: AppLocalizations.of(context)!.comeIn,
                  backgroundColor: isActiveButton
                      ? VTServiceTheme.primaryBlue
                      : VTServiceTheme.neutralGrey100,
                  onTap: () => isActiveButton
                      ? BlocProvider.of<FirstBloc>(context).add(
                          FirstEvent.onLogin(
                              phoneController.text
                                  .replaceAll(RegExp(r'[- \(\)]'), ''),
                              passwordController.text))
                      : {},
                ),
              ),
              //TODO recivry password button
              // Padding(
              //   padding: buttonPadding,
              //   child: VTButton(
              //     onTap: () => {},
              //     text: AppLocalizations.of(context)!.recoveryPassword,
              //     backgroundColor: VTServiceTheme.white,
              //     borderColor: VTServiceTheme.neutralGrey800,
              //     textColor: VTServiceTheme.neutralGrey800,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
