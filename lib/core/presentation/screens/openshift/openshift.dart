import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/presentation/entities/enums.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/event.dart';
import 'package:untitled/core/presentation/widgets/app_snack_bar.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/state.dart';
import 'package:untitled/core/presentation/screens/openshift/screens/photo_example.dart';
import 'package:untitled/core/presentation/screens/openshift/screens/shift_acceptance.dart';
import 'package:untitled/core/presentation/screens/openshift/screens/shift_question.dart';
import 'package:untitled/core/presentation/screens/openshift/screens/shift_start.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/core/presentation/widgets/info_screen.dart';

class OpenshiftPage extends StatefulWidget {
  static const id = '/openshift';

  const OpenshiftPage({Key? key}) : super(key: key);

  @override
  _OpenshiftPageState createState() => _OpenshiftPageState();
}

class _OpenshiftPageState extends State<OpenshiftPage> {
  bool isRecievedAvatar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OpenshiftBloc, OpenshiftState>(
          listener: (context, state) {
        switch (state.screenStatus) {
          case ScreenStatus.error:
            AppSnackBar.showSnackBar(
                AppLocalizations.of(context)!.error, context);
            break;
          default:
            break;
        }
      }, builder: (context, state) {
        switch (state.screenStatus) {
          case ScreenStatus.loading:
            return Center(
              child: CircularProgressIndicator(),
            );
          default:
            switch (state.openshiftScreenStatus) {
              case OpenshiftScreenStatus.acceptance:
                return ShiftAcceptanceScreen(
                  changerName: state.shift?.prevShiftCommentAuthor,
                  changerMessage: state.shift?.prevShiftComment,
                  changerPhotoUrl: state.shift?.prevShiftCommentAuthorUrl,
                );
              case OpenshiftScreenStatus.start:
                return ShiftStartScreen();
              case OpenshiftScreenStatus.photoReport:
                return PhotoExampleScreen(
                  index: state.index!,
                  photo: state.photoExample![state.index!],
                  progress:
                      (state.index! + 1) / (state.photoExample!.length + 1),
                );
              case OpenshiftScreenStatus.completeReport:
                return VTInfoScreen(
                  caption: AppLocalizations.of(context)!.makingPhotoGratitude,
                  onTap: () => BlocProvider.of<OpenshiftBloc>(context)
                      .add(OpenshiftEvent.onCompleteReport()),
                  onTapCaption: AppLocalizations.of(context)!.sendPhoto,
                );
              case OpenshiftScreenStatus.question:
                return OpenShiftQuestionScreen();
              default:
                return Container();
            }
        }
      }),
    );
  }
}
