import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/presentation/entities/enums.dart';
import 'package:untitled/core/presentation/widgets/app_snack_bar.dart';
import 'package:untitled/core/presentation/screens/first/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/first/bloc/state.dart';
import 'package:untitled/core/presentation/screens/first/screens/background_mode.dart';
import 'package:untitled/core/presentation/screens/first/screens/geolocator_permision.dart';
import 'package:untitled/core/presentation/screens/first/screens/login_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FirstPage extends StatefulWidget {
  static const id = '/first';

  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
   return BlocConsumer<FirstBloc, FirstState>(
          listener: (context, state) {
            switch (state.screenStatus) {
              case ScreenStatus.error:
                AppSnackBar.showSnackBar(AppLocalizations.of(context)!.error, context);
                break;
              default:
                break;
            }
          },
          builder:
    //return BlocBuilder<FirstBloc, FirstState>(builder: 
      (context, state) {
      switch (state.screenStatus) {
        case ScreenStatus.loading:
          return Center(
            child: CircularProgressIndicator(),
          );
        default:
          switch (state.currentScreen) {
            case FirstScreenStatus.background:
              return BackgroundMode();
            case FirstScreenStatus.geolocation:
              return GeoPermitionScreen();
            default:
              return LoginPage();
          }
      }
    });
  }
}
