// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accommodation_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccommodationLoaderEventTearOff {
  const _$AccommodationLoaderEventTearOff();

  _Started started() {
    return const _Started();
  }

  _GetAccommodationsStarted getAccommodationsStarted() {
    return const _GetAccommodationsStarted();
  }

  _AccommodationsReceived accommodationsReceived(
      Either<Failure, List<Accommodation>> failureOrAccommodations) {
    return _AccommodationsReceived(
      failureOrAccommodations,
    );
  }
}

/// @nodoc
const $AccommodationLoaderEvent = _$AccommodationLoaderEventTearOff();

/// @nodoc
mixin _$AccommodationLoaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAccommodationsStarted,
    required TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)
        accommodationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccommodationsStarted,
    TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)?
        accommodationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccommodationsStarted,
    TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)?
        accommodationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAccommodationsStarted value)
        getAccommodationsStarted,
    required TResult Function(_AccommodationsReceived value)
        accommodationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccommodationsStarted value)? getAccommodationsStarted,
    TResult Function(_AccommodationsReceived value)? accommodationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccommodationsStarted value)? getAccommodationsStarted,
    TResult Function(_AccommodationsReceived value)? accommodationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationLoaderEventCopyWith<$Res> {
  factory $AccommodationLoaderEventCopyWith(AccommodationLoaderEvent value,
          $Res Function(AccommodationLoaderEvent) then) =
      _$AccommodationLoaderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccommodationLoaderEventCopyWithImpl<$Res>
    implements $AccommodationLoaderEventCopyWith<$Res> {
  _$AccommodationLoaderEventCopyWithImpl(this._value, this._then);

  final AccommodationLoaderEvent _value;
  // ignore: unused_field
  final $Res Function(AccommodationLoaderEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AccommodationLoaderEventCopyWithImpl<$Res>
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
    return 'AccommodationLoaderEvent.started()';
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
    required TResult Function() getAccommodationsStarted,
    required TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)
        accommodationsReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccommodationsStarted,
    TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)?
        accommodationsReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccommodationsStarted,
    TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)?
        accommodationsReceived,
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
    required TResult Function(_GetAccommodationsStarted value)
        getAccommodationsStarted,
    required TResult Function(_AccommodationsReceived value)
        accommodationsReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccommodationsStarted value)? getAccommodationsStarted,
    TResult Function(_AccommodationsReceived value)? accommodationsReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccommodationsStarted value)? getAccommodationsStarted,
    TResult Function(_AccommodationsReceived value)? accommodationsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccommodationLoaderEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetAccommodationsStartedCopyWith<$Res> {
  factory _$GetAccommodationsStartedCopyWith(_GetAccommodationsStarted value,
          $Res Function(_GetAccommodationsStarted) then) =
      __$GetAccommodationsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAccommodationsStartedCopyWithImpl<$Res>
    extends _$AccommodationLoaderEventCopyWithImpl<$Res>
    implements _$GetAccommodationsStartedCopyWith<$Res> {
  __$GetAccommodationsStartedCopyWithImpl(_GetAccommodationsStarted _value,
      $Res Function(_GetAccommodationsStarted) _then)
      : super(_value, (v) => _then(v as _GetAccommodationsStarted));

  @override
  _GetAccommodationsStarted get _value =>
      super._value as _GetAccommodationsStarted;
}

/// @nodoc

class _$_GetAccommodationsStarted implements _GetAccommodationsStarted {
  const _$_GetAccommodationsStarted();

  @override
  String toString() {
    return 'AccommodationLoaderEvent.getAccommodationsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAccommodationsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAccommodationsStarted,
    required TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)
        accommodationsReceived,
  }) {
    return getAccommodationsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccommodationsStarted,
    TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)?
        accommodationsReceived,
  }) {
    return getAccommodationsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccommodationsStarted,
    TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)?
        accommodationsReceived,
    required TResult orElse(),
  }) {
    if (getAccommodationsStarted != null) {
      return getAccommodationsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAccommodationsStarted value)
        getAccommodationsStarted,
    required TResult Function(_AccommodationsReceived value)
        accommodationsReceived,
  }) {
    return getAccommodationsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccommodationsStarted value)? getAccommodationsStarted,
    TResult Function(_AccommodationsReceived value)? accommodationsReceived,
  }) {
    return getAccommodationsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccommodationsStarted value)? getAccommodationsStarted,
    TResult Function(_AccommodationsReceived value)? accommodationsReceived,
    required TResult orElse(),
  }) {
    if (getAccommodationsStarted != null) {
      return getAccommodationsStarted(this);
    }
    return orElse();
  }
}

abstract class _GetAccommodationsStarted implements AccommodationLoaderEvent {
  const factory _GetAccommodationsStarted() = _$_GetAccommodationsStarted;
}

/// @nodoc
abstract class _$AccommodationsReceivedCopyWith<$Res> {
  factory _$AccommodationsReceivedCopyWith(_AccommodationsReceived value,
          $Res Function(_AccommodationsReceived) then) =
      __$AccommodationsReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, List<Accommodation>> failureOrAccommodations});
}

/// @nodoc
class __$AccommodationsReceivedCopyWithImpl<$Res>
    extends _$AccommodationLoaderEventCopyWithImpl<$Res>
    implements _$AccommodationsReceivedCopyWith<$Res> {
  __$AccommodationsReceivedCopyWithImpl(_AccommodationsReceived _value,
      $Res Function(_AccommodationsReceived) _then)
      : super(_value, (v) => _then(v as _AccommodationsReceived));

  @override
  _AccommodationsReceived get _value => super._value as _AccommodationsReceived;

  @override
  $Res call({
    Object? failureOrAccommodations = freezed,
  }) {
    return _then(_AccommodationsReceived(
      failureOrAccommodations == freezed
          ? _value.failureOrAccommodations
          : failureOrAccommodations // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Accommodation>>,
    ));
  }
}

/// @nodoc

class _$_AccommodationsReceived implements _AccommodationsReceived {
  const _$_AccommodationsReceived(this.failureOrAccommodations);

  @override
  final Either<Failure, List<Accommodation>> failureOrAccommodations;

  @override
  String toString() {
    return 'AccommodationLoaderEvent.accommodationsReceived(failureOrAccommodations: $failureOrAccommodations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccommodationsReceived &&
            const DeepCollectionEquality().equals(
                other.failureOrAccommodations, failureOrAccommodations));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(failureOrAccommodations));

  @JsonKey(ignore: true)
  @override
  _$AccommodationsReceivedCopyWith<_AccommodationsReceived> get copyWith =>
      __$AccommodationsReceivedCopyWithImpl<_AccommodationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAccommodationsStarted,
    required TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)
        accommodationsReceived,
  }) {
    return accommodationsReceived(failureOrAccommodations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccommodationsStarted,
    TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)?
        accommodationsReceived,
  }) {
    return accommodationsReceived?.call(failureOrAccommodations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAccommodationsStarted,
    TResult Function(
            Either<Failure, List<Accommodation>> failureOrAccommodations)?
        accommodationsReceived,
    required TResult orElse(),
  }) {
    if (accommodationsReceived != null) {
      return accommodationsReceived(failureOrAccommodations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAccommodationsStarted value)
        getAccommodationsStarted,
    required TResult Function(_AccommodationsReceived value)
        accommodationsReceived,
  }) {
    return accommodationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccommodationsStarted value)? getAccommodationsStarted,
    TResult Function(_AccommodationsReceived value)? accommodationsReceived,
  }) {
    return accommodationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAccommodationsStarted value)? getAccommodationsStarted,
    TResult Function(_AccommodationsReceived value)? accommodationsReceived,
    required TResult orElse(),
  }) {
    if (accommodationsReceived != null) {
      return accommodationsReceived(this);
    }
    return orElse();
  }
}

abstract class _AccommodationsReceived implements AccommodationLoaderEvent {
  const factory _AccommodationsReceived(
          Either<Failure, List<Accommodation>> failureOrAccommodations) =
      _$_AccommodationsReceived;

  Either<Failure, List<Accommodation>> get failureOrAccommodations;
  @JsonKey(ignore: true)
  _$AccommodationsReceivedCopyWith<_AccommodationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AccommodationLoaderStateTearOff {
  const _$AccommodationLoaderStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Accommodation> accommodations) {
    return _LoadSuccess(
      accommodations,
    );
  }

  _LoadFailure loadFailure(Failure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $AccommodationLoaderState = _$AccommodationLoaderStateTearOff();

/// @nodoc
mixin _$AccommodationLoaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Accommodation> accommodations) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationLoaderStateCopyWith<$Res> {
  factory $AccommodationLoaderStateCopyWith(AccommodationLoaderState value,
          $Res Function(AccommodationLoaderState) then) =
      _$AccommodationLoaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccommodationLoaderStateCopyWithImpl<$Res>
    implements $AccommodationLoaderStateCopyWith<$Res> {
  _$AccommodationLoaderStateCopyWithImpl(this._value, this._then);

  final AccommodationLoaderState _value;
  // ignore: unused_field
  final $Res Function(AccommodationLoaderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AccommodationLoaderStateCopyWithImpl<$Res>
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
    return 'AccommodationLoaderState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<Accommodation> accommodations) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AccommodationLoaderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$AccommodationLoaderStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'AccommodationLoaderState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Accommodation> accommodations) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements AccommodationLoaderState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Accommodation> accommodations});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$AccommodationLoaderStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? accommodations = freezed,
  }) {
    return _then(_LoadSuccess(
      accommodations == freezed
          ? _value.accommodations
          : accommodations // ignore: cast_nullable_to_non_nullable
              as List<Accommodation>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.accommodations);

  @override
  final List<Accommodation> accommodations;

  @override
  String toString() {
    return 'AccommodationLoaderState.loadSuccess(accommodations: $accommodations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.accommodations, accommodations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accommodations));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Accommodation> accommodations) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(accommodations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(accommodations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(accommodations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements AccommodationLoaderState {
  const factory _LoadSuccess(List<Accommodation> accommodations) =
      _$_LoadSuccess;

  List<Accommodation> get accommodations;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$AccommodationLoaderStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AccommodationLoaderState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Accommodation> accommodations) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Accommodation> accommodations)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements AccommodationLoaderState {
  const factory _LoadFailure(Failure failure) = _$_LoadFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
