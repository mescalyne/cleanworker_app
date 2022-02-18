import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/core/data/storage/user.dart';
import 'package:untitled/core/domain/usecase/auth.dart';
import 'package:untitled/core/presentation/entities/enums.dart';
import 'package:untitled/core/presentation/router/bloc/bloc.dart';
import 'package:untitled/core/presentation/router/bloc/event.dart';
import 'package:untitled/core/presentation/screens/first/bloc/event.dart';
import 'package:untitled/core/presentation/screens/first/bloc/state.dart';
import 'package:untitled/utils/logger.dart';
import 'package:untitled/utils/result.dart';


typedef FirstEventHandler = Stream<FirstState>;

@Injectable()
class FirstBloc extends Bloc<FirstEvent, FirstState> {
  RouterEventSink _routerEventSink;
  AuthUseCase _authUseCaseImpl;
  UserStorage _userStorage;

  FirstBloc(
    this._routerEventSink,
    this._authUseCaseImpl,
    this._userStorage,
  ) : super(FirstState(screenStatus: ScreenStatus.loading)) {
    _userStorage.clear();
    if (_userStorage.token != null) {
      //print('token ${_userStorage.token}');
      _routerEventSink.add(RouterEvent.pop());
      _routerEventSink.add(RouterEvent.toOpenshift());
    } else {
      add(OnLoad());
    }
  }

  @override
  FirstEventHandler mapEventToState(FirstEvent event) => event.when(
        onLoad: _onLoad,
        onCheckGeo: _onCheckGeo,
        onLogin: _onLogin,
        onStartDay: _onStartDay,
      );

  FirstEventHandler _onStartDay() async* {
    try {
      var locationPermission = await Geolocator.checkPermission();
      if (locationPermission == LocationPermission.denied ||
          locationPermission == LocationPermission.deniedForever) {
        yield state.copyWith(
          currentStatus: ScreenStatus.view,
          currentScreen: FirstScreenStatus.geolocation,
        );
      } else {
        yield state.copyWith(
          currentStatus: ScreenStatus.view,
          currentScreen: FirstScreenStatus.login,
        );
      }
    } catch (ex) {
      yield state.copyWith(
        currentStatus: ScreenStatus.error,
      );
      Log.error('FirstBloc - onStartDay error: ${ex.toString()}');
    }
  }

  FirstEventHandler _onCheckGeo() async* {
    var locationPermission = await Geolocator.checkPermission();
    locationPermission = await Geolocator.requestPermission();

    if (locationPermission == LocationPermission.denied ||
        locationPermission == LocationPermission.deniedForever) {
      locationPermission = await Geolocator.requestPermission();
    }
    add(FirstEvent.onStartDay());
  }

  FirstEventHandler _onLogin(String phone, String password) async* {
    try {
      print(phone);
      final response = await _authUseCaseImpl(phone, password);
      if (response.isSuccess) {
        if (response.value == null)
          throw Exception();
        else {
          var result = response.value!;
          if (result.isCleaner()) {
            _routerEventSink.add(RouterEvent.pop());
            _routerEventSink.add(RouterEvent.toOpenshift());
          } else {
            //TODO авторизация ремонтника
            Log.info('авторизация как ремонтник');
          }
          yield state.copyWith(
            authDto: result,
            currentStatus: ScreenStatus.view,
          );
        }
      } else {
        if (response.failureValue == NetworkResult.incorrectUser) {
          _isIncorrectPassController.add(true);
        } else
          throw Exception();
      }
    } catch (ex) {
      yield state.copyWith(
        currentStatus: ScreenStatus.error,
      );
      Log.error('FirstBloc - onLogin error: ${ex.toString()}');
    }
  }

  FirstEventHandler _onLoad() async* {
    try {
      yield state.copyWith(
        currentStatus: ScreenStatus.view,
      );
    } catch (ex) {
      Log.error('FirstBloc - onLoad error: ${ex.toString()}');
    }
  }

  void checkPermission() async {
    var locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.denied ||
        locationPermission == LocationPermission.deniedForever) {
      locationPermission = await Geolocator.requestPermission();
    }
  }

  StreamController<bool> _isIncorrectPassController = StreamController<bool>();
  Stream<bool> get isIncorrectPassword => _isIncorrectPassController.stream;
}
