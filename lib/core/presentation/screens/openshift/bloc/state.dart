import 'dart:io';

import 'package:untitled/core/domain/entities/photo.dart';
import 'package:untitled/core/domain/entities/shift.dart';
import 'package:untitled/core/presentation/entities/enums.dart';

class OpenshiftState {
  ScreenStatus screenStatus;
  OpenshiftScreenStatus openshiftScreenStatus;
  ShiftDto? shift;
  List<PhotoExampleDto>? photoExample;
  Map<int, File> photoReport ={};
  int? index;

  OpenshiftState({
    this.screenStatus = ScreenStatus.view,
    this.openshiftScreenStatus = OpenshiftScreenStatus.acceptance,
    this.shift,
    this.photoExample,
    this.index,
  });

  OpenshiftState copyWith({
    ScreenStatus? screenStatus,
    OpenshiftScreenStatus? openshiftScreenStatus,
    ShiftDto? shift,
    List<PhotoExampleDto>? photoExample,
    int? index,
  }) =>
      OpenshiftState(
        screenStatus: screenStatus ?? this.screenStatus,
        openshiftScreenStatus:
            openshiftScreenStatus ?? this.openshiftScreenStatus,
        shift: shift ?? this.shift,
        photoExample: photoExample ?? this.photoExample,
        index: index ?? this.index,
      );
}

enum OpenshiftScreenStatus { acceptance, start,  photoReport, question, completeReport }
