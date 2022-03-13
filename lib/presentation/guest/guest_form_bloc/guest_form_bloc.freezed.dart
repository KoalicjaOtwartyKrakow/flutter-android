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

  FullNameChanged fullNameChanged(String fullNameStr) {
    return FullNameChanged(
      fullNameStr,
    );
  }

  PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return PhoneNumberChanged(
      phoneNumberStr,
    );
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() submitAddGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SubmitAddGuest value) submitAddGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestFormEventCopyWith<$Res> {
  factory $GuestFormEventCopyWith(
          GuestFormEvent value, $Res Function(GuestFormEvent) then) =
      _$GuestFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GuestFormEventCopyWithImpl<$Res>
    implements $GuestFormEventCopyWith<$Res> {
  _$GuestFormEventCopyWithImpl(this._value, this._then);

  final GuestFormEvent _value;
  // ignore: unused_field
  final $Res Function(GuestFormEvent) _then;
}

/// @nodoc
abstract class $FullNameChangedCopyWith<$Res> {
  factory $FullNameChangedCopyWith(
          FullNameChanged value, $Res Function(FullNameChanged) then) =
      _$FullNameChangedCopyWithImpl<$Res>;
  $Res call({String fullNameStr});
}

/// @nodoc
class _$FullNameChangedCopyWithImpl<$Res>
    extends _$GuestFormEventCopyWithImpl<$Res>
    implements $FullNameChangedCopyWith<$Res> {
  _$FullNameChangedCopyWithImpl(
      FullNameChanged _value, $Res Function(FullNameChanged) _then)
      : super(_value, (v) => _then(v as FullNameChanged));

  @override
  FullNameChanged get _value => super._value as FullNameChanged;

  @override
  $Res call({
    Object? fullNameStr = freezed,
  }) {
    return _then(FullNameChanged(
      fullNameStr == freezed
          ? _value.fullNameStr
          : fullNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullNameChanged implements FullNameChanged {
  const _$FullNameChanged(this.fullNameStr);

  @override
  final String fullNameStr;

  @override
  String toString() {
    return 'GuestFormEvent.fullNameChanged(fullNameStr: $fullNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameChanged &&
            const DeepCollectionEquality()
                .equals(other.fullNameStr, fullNameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fullNameStr));

  @JsonKey(ignore: true)
  @override
  $FullNameChangedCopyWith<FullNameChanged> get copyWith =>
      _$FullNameChangedCopyWithImpl<FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() submitAddGuest,
  }) {
    return fullNameChanged(fullNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
  }) {
    return fullNameChanged?.call(fullNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SubmitAddGuest value) submitAddGuest,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
  }) {
    return fullNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class FullNameChanged implements GuestFormEvent {
  const factory FullNameChanged(String fullNameStr) = _$FullNameChanged;

  String get fullNameStr;
  @JsonKey(ignore: true)
  $FullNameChangedCopyWith<FullNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$GuestFormEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumberStr = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumberStr);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'GuestFormEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumberStr, phoneNumberStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumberStr));

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() submitAddGuest,
  }) {
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
  }) {
    return phoneNumberChanged?.call(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SubmitAddGuest value) submitAddGuest,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements GuestFormEvent {
  const factory PhoneNumberChanged(String phoneNumberStr) =
      _$PhoneNumberChanged;

  String get phoneNumberStr;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$GuestFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'GuestFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() submitAddGuest,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SubmitAddGuest value) submitAddGuest,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements GuestFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitAddGuestCopyWith<$Res> {
  factory $SubmitAddGuestCopyWith(
          SubmitAddGuest value, $Res Function(SubmitAddGuest) then) =
      _$SubmitAddGuestCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$SubmitAddGuest implements SubmitAddGuest {
  const _$SubmitAddGuest();

  @override
  String toString() {
    return 'GuestFormEvent.submitAddGuest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubmitAddGuest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() submitAddGuest,
  }) {
    return submitAddGuest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
  }) {
    return submitAddGuest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? submitAddGuest,
    required TResult orElse(),
  }) {
    if (submitAddGuest != null) {
      return submitAddGuest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SubmitAddGuest value) submitAddGuest,
  }) {
    return submitAddGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SubmitAddGuest value)? submitAddGuest,
  }) {
    return submitAddGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
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
  const factory SubmitAddGuest() = _$SubmitAddGuest;
}

/// @nodoc
class _$GuestFormStateTearOff {
  const _$GuestFormStateTearOff();

  _GuestFormState call(
      {required String fullName,
      required String email,
      required String phoneNumber,
      required AutovalidateMode showErrorMessages,
      required bool isSubmitting,
      required Option<Either<SubmitFailure, Unit>>
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
  String get phoneNumber => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<SubmitFailure, Unit>> get submitFailureOrSuccessOption =>
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
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      Option<Either<SubmitFailure, Unit>> submitFailureOrSuccessOption});
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
              as AutovalidateMode,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitFailureOrSuccessOption: submitFailureOrSuccessOption == freezed
          ? _value.submitFailureOrSuccessOption
          : submitFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubmitFailure, Unit>>,
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
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      Option<Either<SubmitFailure, Unit>> submitFailureOrSuccessOption});
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
              as AutovalidateMode,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitFailureOrSuccessOption: submitFailureOrSuccessOption == freezed
          ? _value.submitFailureOrSuccessOption
          : submitFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubmitFailure, Unit>>,
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
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<SubmitFailure, Unit>> submitFailureOrSuccessOption;

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
      required AutovalidateMode showErrorMessages,
      required bool isSubmitting,
      required Option<Either<SubmitFailure, Unit>>
          submitFailureOrSuccessOption}) = _$_GuestFormState;

  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<SubmitFailure, Unit>> get submitFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$GuestFormStateCopyWith<_GuestFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
