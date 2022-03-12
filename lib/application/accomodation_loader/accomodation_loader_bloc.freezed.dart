// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accomodation_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccomodationLoaderEventTearOff {
  const _$AccomodationLoaderEventTearOff();

  _Started started() {
    return const _Started();
  }

  _GetAccomodationsStarted getAccomodationsStarted() {
    return const _GetAccomodationsStarted();
  }

  _AccomodationsReceived accomodationsReceived(
      Either<Failure, List<Accomodation>> failureOrAccomodations) {
    return _AccomodationsReceived(
      failureOrAccomodations,
    );
  }
}

/// @nodoc
const $AccomodationLoaderEvent = _$AccomodationLoaderEventTearOff();

/// @nodoc
mixin _$AccomodationLoaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAccomodationsStarted,
    required TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)
        accomodationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccomodationsStarted,
    TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)?
        accomodationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccomodationsStarted,
    TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)?
        accomodationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAccomodationsStarted value)
        getAccomodationsStarted,
    required TResult Function(_AccomodationsReceived value)
        accomodationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccomodationsStarted value)? getAccomodationsStarted,
    TResult Function(_AccomodationsReceived value)? accomodationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccomodationsStarted value)? getAccomodationsStarted,
    TResult Function(_AccomodationsReceived value)? accomodationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccomodationLoaderEventCopyWith<$Res> {
  factory $AccomodationLoaderEventCopyWith(AccomodationLoaderEvent value,
          $Res Function(AccomodationLoaderEvent) then) =
      _$AccomodationLoaderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccomodationLoaderEventCopyWithImpl<$Res>
    implements $AccomodationLoaderEventCopyWith<$Res> {
  _$AccomodationLoaderEventCopyWithImpl(this._value, this._then);

  final AccomodationLoaderEvent _value;
  // ignore: unused_field
  final $Res Function(AccomodationLoaderEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AccomodationLoaderEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AccomodationLoaderEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAccomodationsStarted,
    required TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)
        accomodationsReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccomodationsStarted,
    TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)?
        accomodationsReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccomodationsStarted,
    TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)?
        accomodationsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAccomodationsStarted value)
        getAccomodationsStarted,
    required TResult Function(_AccomodationsReceived value)
        accomodationsReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccomodationsStarted value)? getAccomodationsStarted,
    TResult Function(_AccomodationsReceived value)? accomodationsReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccomodationsStarted value)? getAccomodationsStarted,
    TResult Function(_AccomodationsReceived value)? accomodationsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccomodationLoaderEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetAccomodationsStartedCopyWith<$Res> {
  factory _$GetAccomodationsStartedCopyWith(_GetAccomodationsStarted value,
          $Res Function(_GetAccomodationsStarted) then) =
      __$GetAccomodationsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAccomodationsStartedCopyWithImpl<$Res>
    extends _$AccomodationLoaderEventCopyWithImpl<$Res>
    implements _$GetAccomodationsStartedCopyWith<$Res> {
  __$GetAccomodationsStartedCopyWithImpl(_GetAccomodationsStarted _value,
      $Res Function(_GetAccomodationsStarted) _then)
      : super(_value, (v) => _then(v as _GetAccomodationsStarted));

  @override
  _GetAccomodationsStarted get _value =>
      super._value as _GetAccomodationsStarted;
}

/// @nodoc

class _$_GetAccomodationsStarted implements _GetAccomodationsStarted {
  const _$_GetAccomodationsStarted();

  @override
  String toString() {
    return 'AccomodationLoaderEvent.getAccomodationsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAccomodationsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAccomodationsStarted,
    required TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)
        accomodationsReceived,
  }) {
    return getAccomodationsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccomodationsStarted,
    TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)?
        accomodationsReceived,
  }) {
    return getAccomodationsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccomodationsStarted,
    TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)?
        accomodationsReceived,
    required TResult orElse(),
  }) {
    if (getAccomodationsStarted != null) {
      return getAccomodationsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAccomodationsStarted value)
        getAccomodationsStarted,
    required TResult Function(_AccomodationsReceived value)
        accomodationsReceived,
  }) {
    return getAccomodationsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccomodationsStarted value)? getAccomodationsStarted,
    TResult Function(_AccomodationsReceived value)? accomodationsReceived,
  }) {
    return getAccomodationsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccomodationsStarted value)? getAccomodationsStarted,
    TResult Function(_AccomodationsReceived value)? accomodationsReceived,
    required TResult orElse(),
  }) {
    if (getAccomodationsStarted != null) {
      return getAccomodationsStarted(this);
    }
    return orElse();
  }
}

abstract class _GetAccomodationsStarted implements AccomodationLoaderEvent {
  const factory _GetAccomodationsStarted() = _$_GetAccomodationsStarted;
}

/// @nodoc
abstract class _$AccomodationsReceivedCopyWith<$Res> {
  factory _$AccomodationsReceivedCopyWith(_AccomodationsReceived value,
          $Res Function(_AccomodationsReceived) then) =
      __$AccomodationsReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, List<Accomodation>> failureOrAccomodations});
}

/// @nodoc
class __$AccomodationsReceivedCopyWithImpl<$Res>
    extends _$AccomodationLoaderEventCopyWithImpl<$Res>
    implements _$AccomodationsReceivedCopyWith<$Res> {
  __$AccomodationsReceivedCopyWithImpl(_AccomodationsReceived _value,
      $Res Function(_AccomodationsReceived) _then)
      : super(_value, (v) => _then(v as _AccomodationsReceived));

  @override
  _AccomodationsReceived get _value => super._value as _AccomodationsReceived;

  @override
  $Res call({
    Object? failureOrAccomodations = freezed,
  }) {
    return _then(_AccomodationsReceived(
      failureOrAccomodations == freezed
          ? _value.failureOrAccomodations
          : failureOrAccomodations // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Accomodation>>,
    ));
  }
}

/// @nodoc

class _$_AccomodationsReceived implements _AccomodationsReceived {
  const _$_AccomodationsReceived(this.failureOrAccomodations);

  @override
  final Either<Failure, List<Accomodation>> failureOrAccomodations;

  @override
  String toString() {
    return 'AccomodationLoaderEvent.accomodationsReceived(failureOrAccomodations: $failureOrAccomodations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccomodationsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrAccomodations, failureOrAccomodations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrAccomodations));

  @JsonKey(ignore: true)
  @override
  _$AccomodationsReceivedCopyWith<_AccomodationsReceived> get copyWith =>
      __$AccomodationsReceivedCopyWithImpl<_AccomodationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAccomodationsStarted,
    required TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)
        accomodationsReceived,
  }) {
    return accomodationsReceived(failureOrAccomodations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccomodationsStarted,
    TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)?
        accomodationsReceived,
  }) {
    return accomodationsReceived?.call(failureOrAccomodations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccomodationsStarted,
    TResult Function(
            Either<Failure, List<Accomodation>> failureOrAccomodations)?
        accomodationsReceived,
    required TResult orElse(),
  }) {
    if (accomodationsReceived != null) {
      return accomodationsReceived(failureOrAccomodations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAccomodationsStarted value)
        getAccomodationsStarted,
    required TResult Function(_AccomodationsReceived value)
        accomodationsReceived,
  }) {
    return accomodationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccomodationsStarted value)? getAccomodationsStarted,
    TResult Function(_AccomodationsReceived value)? accomodationsReceived,
  }) {
    return accomodationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccomodationsStarted value)? getAccomodationsStarted,
    TResult Function(_AccomodationsReceived value)? accomodationsReceived,
    required TResult orElse(),
  }) {
    if (accomodationsReceived != null) {
      return accomodationsReceived(this);
    }
    return orElse();
  }
}

abstract class _AccomodationsReceived implements AccomodationLoaderEvent {
  const factory _AccomodationsReceived(
          Either<Failure, List<Accomodation>> failureOrAccomodations) =
      _$_AccomodationsReceived;

  Either<Failure, List<Accomodation>> get failureOrAccomodations;
  @JsonKey(ignore: true)
  _$AccomodationsReceivedCopyWith<_AccomodationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}
