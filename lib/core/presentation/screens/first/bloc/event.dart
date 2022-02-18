
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class FirstEvent with _$FirstEvent {
  const factory FirstEvent.onLoad() = OnLoad;
  const factory FirstEvent.onStartDay() = OnStartDay;
  const factory FirstEvent.onCheckGeo() = OnCheckGeo;
  const factory FirstEvent.onLogin(String phone,String password) = OnLogin;

}
