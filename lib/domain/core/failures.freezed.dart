// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int maxLength}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  ShortLength<T> shortLength<T>(
      {required T failedValue, required int minLength}) {
    return ShortLength<T>(
      failedValue: failedValue,
      minLength: minLength,
    );
  }

  InvalidListContents<T> invalidListContents<T>({required T failedValues}) {
    return InvalidListContents<T>(
      failedValues: failedValues,
    );
  }

  NotJunctionId<T> notJunctionId<T>({required T failedValue}) {
    return NotJunctionId<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidPhoneNumber<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValues) invalidListContents,
    required TResult Function(T failedValue) notJunctionId,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(InvalidListContents<T> value) invalidListContents,
    required TResult Function(NotJunctionId<T> value) notJunctionId,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidEmail<T> value) invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValues) invalidListContents,
    required TResult Function(T failedValue) notJunctionId,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
  }) {
    return exceedingLength?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(InvalidListContents<T> value) invalidListContents,
    required TResult Function(NotJunctionId<T> value) notJunctionId,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidEmail<T> value) invalidPhoneNumber,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required T failedValue, required int maxLength}) = _$ExceedingLength<T>;

  T get failedValue;
  int get maxLength;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortLengthCopyWith<T, $Res> {
  factory $ShortLengthCopyWith(
          ShortLength<T> value, $Res Function(ShortLength<T>) then) =
      _$ShortLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class _$ShortLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortLengthCopyWith<T, $Res> {
  _$ShortLengthCopyWithImpl(
      ShortLength<T> _value, $Res Function(ShortLength<T>) _then)
      : super(_value, (v) => _then(v as ShortLength<T>));

  @override
  ShortLength<T> get _value => super._value as ShortLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? minLength = freezed,
  }) {
    return _then(ShortLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      minLength: minLength == freezed
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShortLength<T> implements ShortLength<T> {
  const _$ShortLength({required this.failedValue, required this.minLength});

  @override
  final T failedValue;
  @override
  final int minLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortLength(failedValue: $failedValue, minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.minLength, minLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(minLength));

  @JsonKey(ignore: true)
  @override
  $ShortLengthCopyWith<T, ShortLength<T>> get copyWith =>
      _$ShortLengthCopyWithImpl<T, ShortLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValues) invalidListContents,
    required TResult Function(T failedValue) notJunctionId,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return shortLength(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
  }) {
    return shortLength?.call(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(failedValue, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(InvalidListContents<T> value) invalidListContents,
    required TResult Function(NotJunctionId<T> value) notJunctionId,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidEmail<T> value) invalidPhoneNumber,
  }) {
    return shortLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
  }) {
    return shortLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(this);
    }
    return orElse();
  }
}

abstract class ShortLength<T> implements ValueFailure<T> {
  const factory ShortLength({required T failedValue, required int minLength}) =
      _$ShortLength<T>;

  T get failedValue;
  int get minLength;
  @JsonKey(ignore: true)
  $ShortLengthCopyWith<T, ShortLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidListContentsCopyWith<T, $Res> {
  factory $InvalidListContentsCopyWith(InvalidListContents<T> value,
          $Res Function(InvalidListContents<T>) then) =
      _$InvalidListContentsCopyWithImpl<T, $Res>;
  $Res call({T failedValues});
}

/// @nodoc
class _$InvalidListContentsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidListContentsCopyWith<T, $Res> {
  _$InvalidListContentsCopyWithImpl(InvalidListContents<T> _value,
      $Res Function(InvalidListContents<T>) _then)
      : super(_value, (v) => _then(v as InvalidListContents<T>));

  @override
  InvalidListContents<T> get _value => super._value as InvalidListContents<T>;

  @override
  $Res call({
    Object? failedValues = freezed,
  }) {
    return _then(InvalidListContents<T>(
      failedValues: failedValues == freezed
          ? _value.failedValues
          : failedValues // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidListContents<T> implements InvalidListContents<T> {
  const _$InvalidListContents({required this.failedValues});

  @override
  final T failedValues;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidListContents(failedValues: $failedValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidListContents<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValues, failedValues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValues));

  @JsonKey(ignore: true)
  @override
  $InvalidListContentsCopyWith<T, InvalidListContents<T>> get copyWith =>
      _$InvalidListContentsCopyWithImpl<T, InvalidListContents<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValues) invalidListContents,
    required TResult Function(T failedValue) notJunctionId,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidListContents(failedValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidListContents?.call(failedValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidListContents != null) {
      return invalidListContents(failedValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(InvalidListContents<T> value) invalidListContents,
    required TResult Function(NotJunctionId<T> value) notJunctionId,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidEmail<T> value) invalidPhoneNumber,
  }) {
    return invalidListContents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
  }) {
    return invalidListContents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidListContents != null) {
      return invalidListContents(this);
    }
    return orElse();
  }
}

abstract class InvalidListContents<T> implements ValueFailure<T> {
  const factory InvalidListContents({required T failedValues}) =
      _$InvalidListContents<T>;

  T get failedValues;
  @JsonKey(ignore: true)
  $InvalidListContentsCopyWith<T, InvalidListContents<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotJunctionIdCopyWith<T, $Res> {
  factory $NotJunctionIdCopyWith(
          NotJunctionId<T> value, $Res Function(NotJunctionId<T>) then) =
      _$NotJunctionIdCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NotJunctionIdCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotJunctionIdCopyWith<T, $Res> {
  _$NotJunctionIdCopyWithImpl(
      NotJunctionId<T> _value, $Res Function(NotJunctionId<T>) _then)
      : super(_value, (v) => _then(v as NotJunctionId<T>));

  @override
  NotJunctionId<T> get _value => super._value as NotJunctionId<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NotJunctionId<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NotJunctionId<T> implements NotJunctionId<T> {
  const _$NotJunctionId({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.notJunctionId(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotJunctionId<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NotJunctionIdCopyWith<T, NotJunctionId<T>> get copyWith =>
      _$NotJunctionIdCopyWithImpl<T, NotJunctionId<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValues) invalidListContents,
    required TResult Function(T failedValue) notJunctionId,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return notJunctionId(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
  }) {
    return notJunctionId?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (notJunctionId != null) {
      return notJunctionId(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(InvalidListContents<T> value) invalidListContents,
    required TResult Function(NotJunctionId<T> value) notJunctionId,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidEmail<T> value) invalidPhoneNumber,
  }) {
    return notJunctionId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
  }) {
    return notJunctionId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (notJunctionId != null) {
      return notJunctionId(this);
    }
    return orElse();
  }
}

abstract class NotJunctionId<T> implements ValueFailure<T> {
  const factory NotJunctionId({required T failedValue}) = _$NotJunctionId<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $NotJunctionIdCopyWith<T, NotJunctionId<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValues) invalidListContents,
    required TResult Function(T failedValue) notJunctionId,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(InvalidListContents<T> value) invalidListContents,
    required TResult Function(NotJunctionId<T> value) notJunctionId,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidEmail<T> value) invalidPhoneNumber,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValues) invalidListContents,
    required TResult Function(T failedValue) notJunctionId,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidPhoneNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValues)? invalidListContents,
    TResult Function(T failedValue)? notJunctionId,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ShortLength<T> value) shortLength,
    required TResult Function(InvalidListContents<T> value) invalidListContents,
    required TResult Function(NotJunctionId<T> value) notJunctionId,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidEmail<T> value) invalidPhoneNumber,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ShortLength<T> value)? shortLength,
    TResult Function(InvalidListContents<T> value)? invalidListContents,
    TResult Function(NotJunctionId<T> value)? notJunctionId,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidEmail<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
