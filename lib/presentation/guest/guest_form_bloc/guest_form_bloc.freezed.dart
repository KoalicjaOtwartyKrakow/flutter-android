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

  EmailChanged emailChanged(String value) {
    return EmailChanged(
      value,
    );
  }

  SubmitAddGuest submitAddGuest() {
    return const SubmitAddGuest();
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
    required TResult Function(String value) fullNameChanged,
    required TResult Function(String value) phoneNumberChanged,
    required TResult Function(String value) emailChanged,
    required TResult Function() submitAddGuest,
  }) {
    return phoneNumberChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? phoneNumberChanged,
    TResult Function(String value)? emailChanged,
    TResult Function()? submitAddGuest,
  }) {
    return phoneNumberChanged?.call(value);
  }

  @override
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
class _$GuestFormStateTearOff {
  const _$GuestFormStateTearOff();

  _GuestFormState call(
      {required String fullName,
      required String email,
      required String phoneNumber,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<SubmitFailure, bool>>
          submitFailureOrSuccessOption}) {
    return _GuestFormState(
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitFailureOrSuccessOption: submitFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $GuestFormState = _$GuestFormStateTearOff();

/// @nodoc
mixin _$GuestFormState {
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber =>
      throw _privateConstructorUsedError; // required AutovalidateMode showErrorMessages,
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<SubmitFailure, bool>> get submitFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestFormStateCopyWith<GuestFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestFormStateCopyWith<$Res> {
  factory $GuestFormStateCopyWith(
          GuestFormState value, $Res Function(GuestFormState) then) =
      _$GuestFormStateCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String email,
      String phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<SubmitFailure, bool>> submitFailureOrSuccessOption});
}

/// @nodoc
class _$GuestFormStateCopyWithImpl<$Res>
    implements $GuestFormStateCopyWith<$Res> {
  _$GuestFormStateCopyWithImpl(this._value, this._then);

  final GuestFormState _value;
  // ignore: unused_field
  final $Res Function(GuestFormState) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? submitFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitFailureOrSuccessOption: submitFailureOrSuccessOption == freezed
          ? _value.submitFailureOrSuccessOption
          : submitFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubmitFailure, bool>>,
    ));
  }
}

/// @nodoc
abstract class _$GuestFormStateCopyWith<$Res>
    implements $GuestFormStateCopyWith<$Res> {
  factory _$GuestFormStateCopyWith(
          _GuestFormState value, $Res Function(_GuestFormState) then) =
      __$GuestFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String email,
      String phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<SubmitFailure, bool>> submitFailureOrSuccessOption});
}

/// @nodoc
class __$GuestFormStateCopyWithImpl<$Res>
    extends _$GuestFormStateCopyWithImpl<$Res>
    implements _$GuestFormStateCopyWith<$Res> {
  __$GuestFormStateCopyWithImpl(
      _GuestFormState _value, $Res Function(_GuestFormState) _then)
      : super(_value, (v) => _then(v as _GuestFormState));

  @override
  _GuestFormState get _value => super._value as _GuestFormState;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? submitFailureOrSuccessOption = freezed,
  }) {
    return _then(_GuestFormState(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitFailureOrSuccessOption: submitFailureOrSuccessOption == freezed
          ? _value.submitFailureOrSuccessOption
          : submitFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubmitFailure, bool>>,
    ));
  }
}

/// @nodoc

class _$_GuestFormState implements _GuestFormState {
  const _$_GuestFormState(
      {required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.submitFailureOrSuccessOption});

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override // required AutovalidateMode showErrorMessages,
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<SubmitFailure, bool>> submitFailureOrSuccessOption;

  @override
  String toString() {
    return 'GuestFormState(fullName: $fullName, email: $email, phoneNumber: $phoneNumber, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccessOption: $submitFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuestFormState &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.submitFailureOrSuccessOption,
                submitFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(submitFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$GuestFormStateCopyWith<_GuestFormState> get copyWith =>
      __$GuestFormStateCopyWithImpl<_GuestFormState>(this, _$identity);
}

abstract class _GuestFormState implements GuestFormState {
  const factory _GuestFormState(
      {required String fullName,
      required String email,
      required String phoneNumber,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<SubmitFailure, bool>>
          submitFailureOrSuccessOption}) = _$_GuestFormState;

  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override // required AutovalidateMode showErrorMessages,
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<SubmitFailure, bool>> get submitFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$GuestFormStateCopyWith<_GuestFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
