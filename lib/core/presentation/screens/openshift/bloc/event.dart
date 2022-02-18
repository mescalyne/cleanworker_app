import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class OpenshiftEvent with _$OpenshiftEvent {
  const factory OpenshiftEvent.onLoad() = OnLoad;
  const factory OpenshiftEvent.onAcceptance() = OnAcceptance;
  const factory OpenshiftEvent.onMakeReport({File? file,int? id}) = OnMakeReport;
  const factory OpenshiftEvent.onCompleteReport() = OnCompleteReport;
  const factory OpenshiftEvent.onCompleteOpen() = OnCompleteOpen;
}
