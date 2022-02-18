// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirstEventTearOff {
  const _$FirstEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  OnStartDay onStartDay() {
    return const OnStartDay();
  }

  OnCheckGeo onCheckGeo() {
    return const OnCheckGeo();
  }

  OnLogin onLogin(String phone, String password) {
    return OnLogin(
      phone,
      password,
    );
  }
}

/// @nodoc
const $FirstEvent = _$FirstEventTearOff();

/// @nodoc
mixin _$FirstEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onStartDay,
    required TResult Function() onCheckGeo,
    required TResult Function(String phone, String password) onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnStartDay value) onStartDay,
    required TResult Function(OnCheckGeo value) onCheckGeo,
    required TResult Function(OnLogin value) onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstEventCopyWith<$Res> {
  factory $FirstEventCopyWith(
          FirstEvent value, $Res Function(FirstEvent) then) =
      _$FirstEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirstEventCopyWithImpl<$Res> implements $FirstEventCopyWith<$Res> {
  _$FirstEventCopyWithImpl(this._value, this._then);

  final FirstEvent _value;
  // ignore: unused_field
  final $Res Function(FirstEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $OnLoadCopyWith<$Res> {
  _$OnLoadCopyWithImpl(OnLoad _value, $Res Function(OnLoad) _then)
      : super(_value, (v) => _then(v as OnLoad));

  @override
  OnLoad get _value => super._value as OnLoad;
}

/// @nodoc

class _$OnLoad implements OnLoad {
  const _$OnLoad();

  @override
  String toString() {
    return 'FirstEvent.onLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onStartDay,
    required TResult Function() onCheckGeo,
    required TResult Function(String phone, String password) onLogin,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnStartDay value) onStartDay,
    required TResult Function(OnCheckGeo value) onCheckGeo,
    required TResult Function(OnLogin value) onLogin,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements FirstEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $OnStartDayCopyWith<$Res> {
  factory $OnStartDayCopyWith(
          OnStartDay value, $Res Function(OnStartDay) then) =
      _$OnStartDayCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnStartDayCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $OnStartDayCopyWith<$Res> {
  _$OnStartDayCopyWithImpl(OnStartDay _value, $Res Function(OnStartDay) _then)
      : super(_value, (v) => _then(v as OnStartDay));

  @override
  OnStartDay get _value => super._value as OnStartDay;
}

/// @nodoc

class _$OnStartDay implements OnStartDay {
  const _$OnStartDay();

  @override
  String toString() {
    return 'FirstEvent.onStartDay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnStartDay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onStartDay,
    required TResult Function() onCheckGeo,
    required TResult Function(String phone, String password) onLogin,
  }) {
    return onStartDay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
  }) {
    return onStartDay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
    required TResult orElse(),
  }) {
    if (onStartDay != null) {
      return onStartDay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnStartDay value) onStartDay,
    required TResult Function(OnCheckGeo value) onCheckGeo,
    required TResult Function(OnLogin value) onLogin,
  }) {
    return onStartDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
  }) {
    return onStartDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
    required TResult orElse(),
  }) {
    if (onStartDay != null) {
      return onStartDay(this);
    }
    return orElse();
  }
}

abstract class OnStartDay implements FirstEvent {
  const factory OnStartDay() = _$OnStartDay;
}

/// @nodoc
abstract class $OnCheckGeoCopyWith<$Res> {
  factory $OnCheckGeoCopyWith(
          OnCheckGeo value, $Res Function(OnCheckGeo) then) =
      _$OnCheckGeoCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCheckGeoCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $OnCheckGeoCopyWith<$Res> {
  _$OnCheckGeoCopyWithImpl(OnCheckGeo _value, $Res Function(OnCheckGeo) _then)
      : super(_value, (v) => _then(v as OnCheckGeo));

  @override
  OnCheckGeo get _value => super._value as OnCheckGeo;
}

/// @nodoc

class _$OnCheckGeo implements OnCheckGeo {
  const _$OnCheckGeo();

  @override
  String toString() {
    return 'FirstEvent.onCheckGeo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCheckGeo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onStartDay,
    required TResult Function() onCheckGeo,
    required TResult Function(String phone, String password) onLogin,
  }) {
    return onCheckGeo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
  }) {
    return onCheckGeo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
    required TResult orElse(),
  }) {
    if (onCheckGeo != null) {
      return onCheckGeo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnStartDay value) onStartDay,
    required TResult Function(OnCheckGeo value) onCheckGeo,
    required TResult Function(OnLogin value) onLogin,
  }) {
    return onCheckGeo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
  }) {
    return onCheckGeo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
    required TResult orElse(),
  }) {
    if (onCheckGeo != null) {
      return onCheckGeo(this);
    }
    return orElse();
  }
}

abstract class OnCheckGeo implements FirstEvent {
  const factory OnCheckGeo() = _$OnCheckGeo;
}

/// @nodoc
abstract class $OnLoginCopyWith<$Res> {
  factory $OnLoginCopyWith(OnLogin value, $Res Function(OnLogin) then) =
      _$OnLoginCopyWithImpl<$Res>;
  $Res call({String phone, String password});
}

/// @nodoc
class _$OnLoginCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $OnLoginCopyWith<$Res> {
  _$OnLoginCopyWithImpl(OnLogin _value, $Res Function(OnLogin) _then)
      : super(_value, (v) => _then(v as OnLogin));

  @override
  OnLogin get _value => super._value as OnLogin;

  @override
  $Res call({
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(OnLogin(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnLogin implements OnLogin {
  const _$OnLogin(this.phone, this.password);

  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'FirstEvent.onLogin(phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnLogin &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $OnLoginCopyWith<OnLogin> get copyWith =>
      _$OnLoginCopyWithImpl<OnLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onStartDay,
    required TResult Function() onCheckGeo,
    required TResult Function(String phone, String password) onLogin,
  }) {
    return onLogin(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
  }) {
    return onLogin?.call(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onStartDay,
    TResult Function()? onCheckGeo,
    TResult Function(String phone, String password)? onLogin,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnStartDay value) onStartDay,
    required TResult Function(OnCheckGeo value) onCheckGeo,
    required TResult Function(OnLogin value) onLogin,
  }) {
    return onLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
  }) {
    return onLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnStartDay value)? onStartDay,
    TResult Function(OnCheckGeo value)? onCheckGeo,
    TResult Function(OnLogin value)? onLogin,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(this);
    }
    return orElse();
  }
}

abstract class OnLogin implements FirstEvent {
  const factory OnLogin(String phone, String password) = _$OnLogin;

  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnLoginCopyWith<OnLogin> get copyWith => throw _privateConstructorUsedError;
}
