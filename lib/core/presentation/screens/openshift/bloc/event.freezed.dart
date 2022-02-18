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
class _$OpenshiftEventTearOff {
  const _$OpenshiftEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  OnAcceptance onAcceptance() {
    return const OnAcceptance();
  }

  OnMakeReport onMakeReport({File? file, int? id}) {
    return OnMakeReport(
      file: file,
      id: id,
    );
  }

  OnCompleteReport onCompleteReport() {
    return const OnCompleteReport();
  }

  OnCompleteOpen onCompleteOpen() {
    return const OnCompleteOpen();
  }
}

/// @nodoc
const $OpenshiftEvent = _$OpenshiftEventTearOff();

/// @nodoc
mixin _$OpenshiftEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onAcceptance,
    required TResult Function(File? file, int? id) onMakeReport,
    required TResult Function() onCompleteReport,
    required TResult Function() onCompleteOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnAcceptance value) onAcceptance,
    required TResult Function(OnMakeReport value) onMakeReport,
    required TResult Function(OnCompleteReport value) onCompleteReport,
    required TResult Function(OnCompleteOpen value) onCompleteOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenshiftEventCopyWith<$Res> {
  factory $OpenshiftEventCopyWith(
          OpenshiftEvent value, $Res Function(OpenshiftEvent) then) =
      _$OpenshiftEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenshiftEventCopyWithImpl<$Res>
    implements $OpenshiftEventCopyWith<$Res> {
  _$OpenshiftEventCopyWithImpl(this._value, this._then);

  final OpenshiftEvent _value;
  // ignore: unused_field
  final $Res Function(OpenshiftEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$OpenshiftEventCopyWithImpl<$Res>
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
    return 'OpenshiftEvent.onLoad()';
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
    required TResult Function() onAcceptance,
    required TResult Function(File? file, int? id) onMakeReport,
    required TResult Function() onCompleteReport,
    required TResult Function() onCompleteOpen,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
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
    required TResult Function(OnAcceptance value) onAcceptance,
    required TResult Function(OnMakeReport value) onMakeReport,
    required TResult Function(OnCompleteReport value) onCompleteReport,
    required TResult Function(OnCompleteOpen value) onCompleteOpen,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements OpenshiftEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $OnAcceptanceCopyWith<$Res> {
  factory $OnAcceptanceCopyWith(
          OnAcceptance value, $Res Function(OnAcceptance) then) =
      _$OnAcceptanceCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnAcceptanceCopyWithImpl<$Res>
    extends _$OpenshiftEventCopyWithImpl<$Res>
    implements $OnAcceptanceCopyWith<$Res> {
  _$OnAcceptanceCopyWithImpl(
      OnAcceptance _value, $Res Function(OnAcceptance) _then)
      : super(_value, (v) => _then(v as OnAcceptance));

  @override
  OnAcceptance get _value => super._value as OnAcceptance;
}

/// @nodoc

class _$OnAcceptance implements OnAcceptance {
  const _$OnAcceptance();

  @override
  String toString() {
    return 'OpenshiftEvent.onAcceptance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnAcceptance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onAcceptance,
    required TResult Function(File? file, int? id) onMakeReport,
    required TResult Function() onCompleteReport,
    required TResult Function() onCompleteOpen,
  }) {
    return onAcceptance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
  }) {
    return onAcceptance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onAcceptance != null) {
      return onAcceptance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnAcceptance value) onAcceptance,
    required TResult Function(OnMakeReport value) onMakeReport,
    required TResult Function(OnCompleteReport value) onCompleteReport,
    required TResult Function(OnCompleteOpen value) onCompleteOpen,
  }) {
    return onAcceptance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
  }) {
    return onAcceptance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onAcceptance != null) {
      return onAcceptance(this);
    }
    return orElse();
  }
}

abstract class OnAcceptance implements OpenshiftEvent {
  const factory OnAcceptance() = _$OnAcceptance;
}

/// @nodoc
abstract class $OnMakeReportCopyWith<$Res> {
  factory $OnMakeReportCopyWith(
          OnMakeReport value, $Res Function(OnMakeReport) then) =
      _$OnMakeReportCopyWithImpl<$Res>;
  $Res call({File? file, int? id});
}

/// @nodoc
class _$OnMakeReportCopyWithImpl<$Res>
    extends _$OpenshiftEventCopyWithImpl<$Res>
    implements $OnMakeReportCopyWith<$Res> {
  _$OnMakeReportCopyWithImpl(
      OnMakeReport _value, $Res Function(OnMakeReport) _then)
      : super(_value, (v) => _then(v as OnMakeReport));

  @override
  OnMakeReport get _value => super._value as OnMakeReport;

  @override
  $Res call({
    Object? file = freezed,
    Object? id = freezed,
  }) {
    return _then(OnMakeReport(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnMakeReport implements OnMakeReport {
  const _$OnMakeReport({this.file, this.id});

  @override
  final File? file;
  @override
  final int? id;

  @override
  String toString() {
    return 'OpenshiftEvent.onMakeReport(file: $file, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnMakeReport &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $OnMakeReportCopyWith<OnMakeReport> get copyWith =>
      _$OnMakeReportCopyWithImpl<OnMakeReport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onAcceptance,
    required TResult Function(File? file, int? id) onMakeReport,
    required TResult Function() onCompleteReport,
    required TResult Function() onCompleteOpen,
  }) {
    return onMakeReport(file, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
  }) {
    return onMakeReport?.call(file, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onMakeReport != null) {
      return onMakeReport(file, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnAcceptance value) onAcceptance,
    required TResult Function(OnMakeReport value) onMakeReport,
    required TResult Function(OnCompleteReport value) onCompleteReport,
    required TResult Function(OnCompleteOpen value) onCompleteOpen,
  }) {
    return onMakeReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
  }) {
    return onMakeReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onMakeReport != null) {
      return onMakeReport(this);
    }
    return orElse();
  }
}

abstract class OnMakeReport implements OpenshiftEvent {
  const factory OnMakeReport({File? file, int? id}) = _$OnMakeReport;

  File? get file => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnMakeReportCopyWith<OnMakeReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnCompleteReportCopyWith<$Res> {
  factory $OnCompleteReportCopyWith(
          OnCompleteReport value, $Res Function(OnCompleteReport) then) =
      _$OnCompleteReportCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCompleteReportCopyWithImpl<$Res>
    extends _$OpenshiftEventCopyWithImpl<$Res>
    implements $OnCompleteReportCopyWith<$Res> {
  _$OnCompleteReportCopyWithImpl(
      OnCompleteReport _value, $Res Function(OnCompleteReport) _then)
      : super(_value, (v) => _then(v as OnCompleteReport));

  @override
  OnCompleteReport get _value => super._value as OnCompleteReport;
}

/// @nodoc

class _$OnCompleteReport implements OnCompleteReport {
  const _$OnCompleteReport();

  @override
  String toString() {
    return 'OpenshiftEvent.onCompleteReport()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCompleteReport);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onAcceptance,
    required TResult Function(File? file, int? id) onMakeReport,
    required TResult Function() onCompleteReport,
    required TResult Function() onCompleteOpen,
  }) {
    return onCompleteReport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
  }) {
    return onCompleteReport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onCompleteReport != null) {
      return onCompleteReport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnAcceptance value) onAcceptance,
    required TResult Function(OnMakeReport value) onMakeReport,
    required TResult Function(OnCompleteReport value) onCompleteReport,
    required TResult Function(OnCompleteOpen value) onCompleteOpen,
  }) {
    return onCompleteReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
  }) {
    return onCompleteReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onCompleteReport != null) {
      return onCompleteReport(this);
    }
    return orElse();
  }
}

abstract class OnCompleteReport implements OpenshiftEvent {
  const factory OnCompleteReport() = _$OnCompleteReport;
}

/// @nodoc
abstract class $OnCompleteOpenCopyWith<$Res> {
  factory $OnCompleteOpenCopyWith(
          OnCompleteOpen value, $Res Function(OnCompleteOpen) then) =
      _$OnCompleteOpenCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCompleteOpenCopyWithImpl<$Res>
    extends _$OpenshiftEventCopyWithImpl<$Res>
    implements $OnCompleteOpenCopyWith<$Res> {
  _$OnCompleteOpenCopyWithImpl(
      OnCompleteOpen _value, $Res Function(OnCompleteOpen) _then)
      : super(_value, (v) => _then(v as OnCompleteOpen));

  @override
  OnCompleteOpen get _value => super._value as OnCompleteOpen;
}

/// @nodoc

class _$OnCompleteOpen implements OnCompleteOpen {
  const _$OnCompleteOpen();

  @override
  String toString() {
    return 'OpenshiftEvent.onCompleteOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCompleteOpen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onAcceptance,
    required TResult Function(File? file, int? id) onMakeReport,
    required TResult Function() onCompleteReport,
    required TResult Function() onCompleteOpen,
  }) {
    return onCompleteOpen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
  }) {
    return onCompleteOpen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onAcceptance,
    TResult Function(File? file, int? id)? onMakeReport,
    TResult Function()? onCompleteReport,
    TResult Function()? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onCompleteOpen != null) {
      return onCompleteOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnAcceptance value) onAcceptance,
    required TResult Function(OnMakeReport value) onMakeReport,
    required TResult Function(OnCompleteReport value) onCompleteReport,
    required TResult Function(OnCompleteOpen value) onCompleteOpen,
  }) {
    return onCompleteOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
  }) {
    return onCompleteOpen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnAcceptance value)? onAcceptance,
    TResult Function(OnMakeReport value)? onMakeReport,
    TResult Function(OnCompleteReport value)? onCompleteReport,
    TResult Function(OnCompleteOpen value)? onCompleteOpen,
    required TResult orElse(),
  }) {
    if (onCompleteOpen != null) {
      return onCompleteOpen(this);
    }
    return orElse();
  }
}

abstract class OnCompleteOpen implements OpenshiftEvent {
  const factory OnCompleteOpen() = _$OnCompleteOpen;
}
