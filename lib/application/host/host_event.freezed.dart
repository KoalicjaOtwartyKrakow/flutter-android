// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'host_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HostEventTearOff {
  const _$HostEventTearOff();

  _Download downloadContract() {
    return const _Download();
  }
}

/// @nodoc
const $HostEvent = _$HostEventTearOff();

/// @nodoc
mixin _$HostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloadContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloadContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloadContract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Download value) downloadContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Download value)? downloadContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Download value)? downloadContract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostEventCopyWith<$Res> {
  factory $HostEventCopyWith(HostEvent value, $Res Function(HostEvent) then) =
      _$HostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HostEventCopyWithImpl<$Res> implements $HostEventCopyWith<$Res> {
  _$HostEventCopyWithImpl(this._value, this._then);

  final HostEvent _value;
  // ignore: unused_field
  final $Res Function(HostEvent) _then;
}

/// @nodoc
abstract class _$DownloadCopyWith<$Res> {
  factory _$DownloadCopyWith(_Download value, $Res Function(_Download) then) =
      __$DownloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$DownloadCopyWithImpl<$Res> extends _$HostEventCopyWithImpl<$Res>
    implements _$DownloadCopyWith<$Res> {
  __$DownloadCopyWithImpl(_Download _value, $Res Function(_Download) _then)
      : super(_value, (v) => _then(v as _Download));

  @override
  _Download get _value => super._value as _Download;
}

/// @nodoc

class _$_Download implements _Download {
  const _$_Download();

  @override
  String toString() {
    return 'HostEvent.downloadContract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Download);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloadContract,
  }) {
    return downloadContract();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloadContract,
  }) {
    return downloadContract?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloadContract,
    required TResult orElse(),
  }) {
    if (downloadContract != null) {
      return downloadContract();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Download value) downloadContract,
  }) {
    return downloadContract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Download value)? downloadContract,
  }) {
    return downloadContract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Download value)? downloadContract,
    required TResult orElse(),
  }) {
    if (downloadContract != null) {
      return downloadContract(this);
    }
    return orElse();
  }
}

abstract class _Download implements HostEvent {
  const factory _Download() = _$_Download;
}
