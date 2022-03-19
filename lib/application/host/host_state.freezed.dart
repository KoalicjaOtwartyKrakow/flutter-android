// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'host_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HostStateTearOff {
  const _$HostStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  HostStateSuccess downloadSuccess(String url) {
    return HostStateSuccess(
      url,
    );
  }

  HostStateFailure downloadFailure() {
    return const HostStateFailure();
  }
}

/// @nodoc
const $HostState = _$HostStateTearOff();

/// @nodoc
mixin _$HostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String url) downloadSuccess,
    required TResult Function() downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? downloadSuccess,
    TResult Function()? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? downloadSuccess,
    TResult Function()? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HostStateSuccess value) downloadSuccess,
    required TResult Function(HostStateFailure value) downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostStateSuccess value)? downloadSuccess,
    TResult Function(HostStateFailure value)? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostStateSuccess value)? downloadSuccess,
    TResult Function(HostStateFailure value)? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostStateCopyWith<$Res> {
  factory $HostStateCopyWith(HostState value, $Res Function(HostState) then) =
      _$HostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HostStateCopyWithImpl<$Res> implements $HostStateCopyWith<$Res> {
  _$HostStateCopyWithImpl(this._value, this._then);

  final HostState _value;
  // ignore: unused_field
  final $Res Function(HostState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HostStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String url) downloadSuccess,
    required TResult Function() downloadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? downloadSuccess,
    TResult Function()? downloadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? downloadSuccess,
    TResult Function()? downloadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HostStateSuccess value) downloadSuccess,
    required TResult Function(HostStateFailure value) downloadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostStateSuccess value)? downloadSuccess,
    TResult Function(HostStateFailure value)? downloadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostStateSuccess value)? downloadSuccess,
    TResult Function(HostStateFailure value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HostState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $HostStateSuccessCopyWith<$Res> {
  factory $HostStateSuccessCopyWith(
          HostStateSuccess value, $Res Function(HostStateSuccess) then) =
      _$HostStateSuccessCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$HostStateSuccessCopyWithImpl<$Res> extends _$HostStateCopyWithImpl<$Res>
    implements $HostStateSuccessCopyWith<$Res> {
  _$HostStateSuccessCopyWithImpl(
      HostStateSuccess _value, $Res Function(HostStateSuccess) _then)
      : super(_value, (v) => _then(v as HostStateSuccess));

  @override
  HostStateSuccess get _value => super._value as HostStateSuccess;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(HostStateSuccess(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HostStateSuccess implements HostStateSuccess {
  const _$HostStateSuccess(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'HostState.downloadSuccess(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HostStateSuccess &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  $HostStateSuccessCopyWith<HostStateSuccess> get copyWith =>
      _$HostStateSuccessCopyWithImpl<HostStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String url) downloadSuccess,
    required TResult Function() downloadFailure,
  }) {
    return downloadSuccess(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? downloadSuccess,
    TResult Function()? downloadFailure,
  }) {
    return downloadSuccess?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? downloadSuccess,
    TResult Function()? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HostStateSuccess value) downloadSuccess,
    required TResult Function(HostStateFailure value) downloadFailure,
  }) {
    return downloadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostStateSuccess value)? downloadSuccess,
    TResult Function(HostStateFailure value)? downloadFailure,
  }) {
    return downloadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostStateSuccess value)? downloadSuccess,
    TResult Function(HostStateFailure value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(this);
    }
    return orElse();
  }
}

abstract class HostStateSuccess implements HostState {
  const factory HostStateSuccess(String url) = _$HostStateSuccess;

  String get url;
  @JsonKey(ignore: true)
  $HostStateSuccessCopyWith<HostStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostStateFailureCopyWith<$Res> {
  factory $HostStateFailureCopyWith(
          HostStateFailure value, $Res Function(HostStateFailure) then) =
      _$HostStateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$HostStateFailureCopyWithImpl<$Res> extends _$HostStateCopyWithImpl<$Res>
    implements $HostStateFailureCopyWith<$Res> {
  _$HostStateFailureCopyWithImpl(
      HostStateFailure _value, $Res Function(HostStateFailure) _then)
      : super(_value, (v) => _then(v as HostStateFailure));

  @override
  HostStateFailure get _value => super._value as HostStateFailure;
}

/// @nodoc

class _$HostStateFailure implements HostStateFailure {
  const _$HostStateFailure();

  @override
  String toString() {
    return 'HostState.downloadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HostStateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String url) downloadSuccess,
    required TResult Function() downloadFailure,
  }) {
    return downloadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? downloadSuccess,
    TResult Function()? downloadFailure,
  }) {
    return downloadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? downloadSuccess,
    TResult Function()? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadFailure != null) {
      return downloadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HostStateSuccess value) downloadSuccess,
    required TResult Function(HostStateFailure value) downloadFailure,
  }) {
    return downloadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostStateSuccess value)? downloadSuccess,
    TResult Function(HostStateFailure value)? downloadFailure,
  }) {
    return downloadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HostStateSuccess value)? downloadSuccess,
    TResult Function(HostStateFailure value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadFailure != null) {
      return downloadFailure(this);
    }
    return orElse();
  }
}

abstract class HostStateFailure implements HostState {
  const factory HostStateFailure() = _$HostStateFailure;
}
