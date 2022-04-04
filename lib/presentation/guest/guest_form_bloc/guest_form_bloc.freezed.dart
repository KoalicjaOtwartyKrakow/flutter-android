// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guest_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GuestFormEventTearOff {
  const _$GuestFormEventTearOff();

  SubmitAddGuest submitAddGuest(GuestDto guest) {
    return SubmitAddGuest(
      guest,
    );
  }
}

/// @nodoc
const $GuestFormEvent = _$GuestFormEventTearOff();

/// @nodoc
mixin _$GuestFormEvent {
  GuestDto get guest => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GuestDto guest) submitAddGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GuestDto guest)? submitAddGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GuestDto guest)? submitAddGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitAddGuest value) submitAddGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitAddGuest value)? submitAddGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitAddGuest value)? submitAddGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestFormEventCopyWith<GuestFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestFormEventCopyWith<$Res> {
  factory $GuestFormEventCopyWith(
          GuestFormEvent value, $Res Function(GuestFormEvent) then) =
      _$GuestFormEventCopyWithImpl<$Res>;
  $Res call({GuestDto guest});
}

/// @nodoc
class _$GuestFormEventCopyWithImpl<$Res>
    implements $GuestFormEventCopyWith<$Res> {
  _$GuestFormEventCopyWithImpl(this._value, this._then);

  final GuestFormEvent _value;
  // ignore: unused_field
  final $Res Function(GuestFormEvent) _then;

  @override
  $Res call({
    Object? guest = freezed,
  }) {
    return _then(_value.copyWith(
      guest: guest == freezed
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as GuestDto,
    ));
  }
}

/// @nodoc
abstract class $SubmitAddGuestCopyWith<$Res>
    implements $GuestFormEventCopyWith<$Res> {
  factory $SubmitAddGuestCopyWith(
          SubmitAddGuest value, $Res Function(SubmitAddGuest) then) =
      _$SubmitAddGuestCopyWithImpl<$Res>;
  @override
  $Res call({GuestDto guest});
}

/// @nodoc
class _$SubmitAddGuestCopyWithImpl<$Res>
    extends _$GuestFormEventCopyWithImpl<$Res>
    implements $SubmitAddGuestCopyWith<$Res> {
  _$SubmitAddGuestCopyWithImpl(
      SubmitAddGuest _value, $Res Function(SubmitAddGuest) _then)
      : super(_value, (v) => _then(v as SubmitAddGuest));

  @override
  SubmitAddGuest get _value => super._value as SubmitAddGuest;

  @override
  $Res call({
    Object? guest = freezed,
  }) {
    return _then(SubmitAddGuest(
      guest == freezed
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as GuestDto,
    ));
  }
}

/// @nodoc

class _$SubmitAddGuest implements SubmitAddGuest {
  const _$SubmitAddGuest(this.guest);

  @override
  final GuestDto guest;

  @override
  String toString() {
    return 'GuestFormEvent.submitAddGuest(guest: $guest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubmitAddGuest &&
            const DeepCollectionEquality().equals(other.guest, guest));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guest));

  @JsonKey(ignore: true)
  @override
  $SubmitAddGuestCopyWith<SubmitAddGuest> get copyWith =>
      _$SubmitAddGuestCopyWithImpl<SubmitAddGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GuestDto guest) submitAddGuest,
  }) {
    return submitAddGuest(guest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GuestDto guest)? submitAddGuest,
  }) {
    return submitAddGuest?.call(guest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GuestDto guest)? submitAddGuest,
    required TResult orElse(),
  }) {
    if (submitAddGuest != null) {
      return submitAddGuest(guest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitAddGuest value) submitAddGuest,
  }) {
    return submitAddGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitAddGuest value)? submitAddGuest,
  }) {
    return submitAddGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitAddGuest value)? submitAddGuest,
    required TResult orElse(),
  }) {
    if (submitAddGuest != null) {
      return submitAddGuest(this);
    }
    return orElse();
  }
}

abstract class SubmitAddGuest implements GuestFormEvent {
  const factory SubmitAddGuest(GuestDto guest) = _$SubmitAddGuest;

  @override
  GuestDto get guest;
  @override
  @JsonKey(ignore: true)
  $SubmitAddGuestCopyWith<SubmitAddGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GuestFormStateTearOff {
  const _$GuestFormStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SubmitSuccess submitSuccess() {
    return const _SubmitSuccess();
  }

  _SubmitFailure submitFailure(Failure failure) {
    return _SubmitFailure(
      failure,
    );
  }
}

/// @nodoc
const $GuestFormState = _$GuestFormStateTearOff();

/// @nodoc
mixin _$GuestFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitSuccess,
    required TResult Function(Failure failure) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitSuccess,
    TResult Function(Failure failure)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitSuccess,
    TResult Function(Failure failure)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestFormStateCopyWith<$Res> {
  factory $GuestFormStateCopyWith(
          GuestFormState value, $Res Function(GuestFormState) then) =
      _$GuestFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GuestFormStateCopyWithImpl<$Res>
    implements $GuestFormStateCopyWith<$Res> {
  _$GuestFormStateCopyWithImpl(this._value, this._then);

  final GuestFormState _value;
  // ignore: unused_field
  final $Res Function(GuestFormState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GuestFormStateCopyWithImpl<$Res>
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
    return 'GuestFormState.initial()';
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
    required TResult Function() submitSuccess,
    required TResult Function(Failure failure) submitFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitSuccess,
    TResult Function(Failure failure)? submitFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitSuccess,
    TResult Function(Failure failure)? submitFailure,
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
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GuestFormState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SubmitSuccessCopyWith<$Res> {
  factory _$SubmitSuccessCopyWith(
          _SubmitSuccess value, $Res Function(_SubmitSuccess) then) =
      __$SubmitSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitSuccessCopyWithImpl<$Res>
    extends _$GuestFormStateCopyWithImpl<$Res>
    implements _$SubmitSuccessCopyWith<$Res> {
  __$SubmitSuccessCopyWithImpl(
      _SubmitSuccess _value, $Res Function(_SubmitSuccess) _then)
      : super(_value, (v) => _then(v as _SubmitSuccess));

  @override
  _SubmitSuccess get _value => super._value as _SubmitSuccess;
}

/// @nodoc

class _$_SubmitSuccess implements _SubmitSuccess {
  const _$_SubmitSuccess();

  @override
  String toString() {
    return 'GuestFormState.submitSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SubmitSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitSuccess,
    required TResult Function(Failure failure) submitFailure,
  }) {
    return submitSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitSuccess,
    TResult Function(Failure failure)? submitFailure,
  }) {
    return submitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitSuccess,
    TResult Function(Failure failure)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }
}

abstract class _SubmitSuccess implements GuestFormState {
  const factory _SubmitSuccess() = _$_SubmitSuccess;
}

/// @nodoc
abstract class _$SubmitFailureCopyWith<$Res> {
  factory _$SubmitFailureCopyWith(
          _SubmitFailure value, $Res Function(_SubmitFailure) then) =
      __$SubmitFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$SubmitFailureCopyWithImpl<$Res>
    extends _$GuestFormStateCopyWithImpl<$Res>
    implements _$SubmitFailureCopyWith<$Res> {
  __$SubmitFailureCopyWithImpl(
      _SubmitFailure _value, $Res Function(_SubmitFailure) _then)
      : super(_value, (v) => _then(v as _SubmitFailure));

  @override
  _SubmitFailure get _value => super._value as _SubmitFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_SubmitFailure(
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

class _$_SubmitFailure implements _SubmitFailure {
  const _$_SubmitFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GuestFormState.submitFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$SubmitFailureCopyWith<_SubmitFailure> get copyWith =>
      __$SubmitFailureCopyWithImpl<_SubmitFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitSuccess,
    required TResult Function(Failure failure) submitFailure,
  }) {
    return submitFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitSuccess,
    TResult Function(Failure failure)? submitFailure,
  }) {
    return submitFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitSuccess,
    TResult Function(Failure failure)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) {
    return submitFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) {
    return submitFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(this);
    }
    return orElse();
  }
}

abstract class _SubmitFailure implements GuestFormState {
  const factory _SubmitFailure(Failure failure) = _$_SubmitFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SubmitFailureCopyWith<_SubmitFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
