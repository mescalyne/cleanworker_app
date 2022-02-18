import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/core/domain/usecase/shift.dart';
import 'package:untitled/core/presentation/entities/enums.dart';
import 'package:untitled/core/presentation/router/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/event.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/state.dart';
import 'package:untitled/utils/logger.dart';

typedef OpenshiftEventHandler = Stream<OpenshiftState>;

@Injectable()
class OpenshiftBloc extends Bloc<OpenshiftEvent, OpenshiftState> {
  RouterEventSink _routerEventSink;
  OpenShiftUseCase _openShiftUseCase;
  OpenShiftPhotoUseCase _openShiftPhotoUseCase;
  OpenShiftPhotoUploadUseCase _openShiftPhotoUploadUseCase;

  OpenshiftBloc(this._routerEventSink, this._openShiftUseCase,
      this._openShiftPhotoUseCase, this._openShiftPhotoUploadUseCase)
      : super(OpenshiftState(screenStatus: ScreenStatus.loading)) {
    add(OnLoad());
  }

  @override
  OpenshiftEventHandler mapEventToState(OpenshiftEvent event) => event.when(
        onLoad: _onLoad,
        onAcceptance: _onAcceptance,
        onMakeReport: _onMakeReport,
        onCompleteReport: _onCompleteReport,
        onCompleteOpen: _onCompleteOpen,
      );


  OpenshiftEventHandler _onLoad() async* {
    yield state.copyWith(screenStatus: ScreenStatus.loading);
    try {
      final response = await _openShiftUseCase();
      if (response.isFailure || response.value == null) throw Exception();
      var currShift = response.value!;
      yield state.copyWith(
        screenStatus: ScreenStatus.view,
        openshiftScreenStatus: OpenshiftScreenStatus.acceptance,
        shift: currShift,
      );
    } catch (ex) {
      Log.error('OpenshiftBloc - onLoad error: ${ex.toString()}');
    }
  }

  var exp = 0; //TODO dsfsfs

  OpenshiftEventHandler _onAcceptance() async* {
    yield state.copyWith(screenStatus: ScreenStatus.loading);
    try {
      final result = await _openShiftPhotoUseCase();
      final photoExample = result.value;
      //List<PhotoExampleDto> photoExample = [];
      //photoExample.add(PhotoExampleDto(description: 'Фото модуля', id: 2));
      //photoExample.add(PhotoExampleDto(description: 'Фото раковины', id: 1));
      //photoExample.add(PhotoExampleDto(description: 'Фото унитаза', id: 3));

      yield state.copyWith(
        photoExample: photoExample,
        screenStatus: ScreenStatus.view,
        openshiftScreenStatus: OpenshiftScreenStatus.start,
      );
    } catch (ex) {
      yield state.copyWith(screenStatus: ScreenStatus.error);
      Log.error('OpenshiftBloc - onAcceptance error: ${ex.toString()}');
    }
  }

  OpenshiftEventHandler _onCompleteReport() async* {
    try {
      print('exp${exp}');
      if (exp % 2 == 0) throw Exception();
      exp++;

      state.photoReport.forEach((key, value) async {
        var response = await _openShiftPhotoUploadUseCase(value, key);
        if (response.isFailure ||
            response.value == null ||
            response.value == false) throw Exception();
      });

      yield state.copyWith(
        screenStatus: ScreenStatus.view,
        openshiftScreenStatus: OpenshiftScreenStatus.question,
      );
    } catch (ex) {
      yield state.copyWith(screenStatus: ScreenStatus.error);
      exp++;

      Log.error('OpenshiftBloc - onCompleteReport error: ${ex.toString()}');
    }
  }

  OpenshiftEventHandler _onMakeReport(File? file, int? id) async* {
    yield state.copyWith(screenStatus: ScreenStatus.loading);
    try {
      if (file != null && id != null) {
        state.photoReport[id] = file;
//        var response = await _openShiftPhotoUploadUseCase(file, id);
        //      if (response.isFailure || response.value == null) throw Exception();
        //    var reqResult = response.value!;
        //    if (!reqResult) yield state.copyWith(screenStatus: ScreenStatus.view);
      }

      int index = state.index ?? -1;
      index++;
      if (state.photoExample == null || state.photoExample?.length == 0)
        throw Exception();
      else if (index != state.photoExample?.length) {
        yield state.copyWith(
          index: index,
          screenStatus: ScreenStatus.view,
          openshiftScreenStatus: OpenshiftScreenStatus.photoReport,
        );
      } else {
        yield state.copyWith(
          screenStatus: ScreenStatus.view,
          openshiftScreenStatus: OpenshiftScreenStatus.completeReport,
        );
      }
    } catch (ex) {
      yield state.copyWith(screenStatus: ScreenStatus.error);
      Log.error('OpenshiftBloc - onMakeReport error: ${ex.toString()}');
    }
  }

  OpenshiftEventHandler _onCompleteOpen() async* {
        yield state.copyWith(screenStatus: ScreenStatus.loading);

  }

  StreamController<bool> _isAvailableTransition = StreamController<bool>();
  Stream<bool> get isIncorrectPassword => _isAvailableTransition.stream;
}
