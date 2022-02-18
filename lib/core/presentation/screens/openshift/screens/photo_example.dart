import 'dart:io';
import 'dart:math' as Math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:untitled/core/domain/entities/photo.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/event.dart';
import 'package:untitled/core/presentation/widgets/button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/resources/text_style.dart';
import 'package:untitled/resources/theme.dart';

class PhotoExampleScreen extends StatelessWidget {
  final PhotoExampleDto photo;
  final double progress;
  final int index;

  PhotoExampleScreen({
    required this.photo,
    required this.progress,
    required this.index,
    Key? key,
  }) : super(key: key);

  static const paddingContent =
      EdgeInsets.only(top: 60.0, bottom: 32.0, left: 16.0, right: 16.0);
  static const heightSpace = 24.0;
  static const imageWidth = 343.0;

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
              Stack(
                children: [
                  Container(
                    height: 8.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: VTServiceTheme.lightBlue,
                    ),
                  ),
                  Container(
                    height: 8.0,
                    width: MediaQuery.of(context).size.width * progress,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: VTServiceTheme.primaryBlue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: heightSpace,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/png/example${index + 1}.png',
                  width: imageWidth,
                ),
              ),
              SizedBox(
                height: heightSpace,
              ),
              Text(
                photo.description!,
                style: VTServiceStyle.titleStyleH2(),
              )
            ],
          ),
          VTButton(
            icon: Icons.camera_alt,
            text: AppLocalizations.of(context)!.makingPhotoShot,
            onTap: () => imagePicker(context, index),
          ),
        ],
      ),
    ));
  }

  void imagePicker(context, index) async {
    var _picker = ImagePicker();

    XFile? image = await _picker.pickImage(
        source: ImageSource.camera, maxHeight: 1280.0, maxWidth: 960.0);
    if (image != null) {
      final tempDir = await getTemporaryDirectory();
      int rand = new Math.Random().nextInt(10000);
      var file = img.decodeImage(File(image.path).readAsBytesSync());
      File compressedImage = new File('${tempDir.path}/img_$rand.png')
        ..writeAsBytesSync(img.encodeJpg(file!, quality: 80));
      BlocProvider.of<OpenshiftBloc>(context).add(
          OpenshiftEvent.onMakeReport(file: compressedImage, id: index + 1));
    }
  }
}
