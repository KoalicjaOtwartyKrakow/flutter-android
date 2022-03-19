// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accommodation_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccommodationFormEventTearOff {
  const _$AccommodationFormEventTearOff();

  _Submit submit(Accommodation accommodation) {
    return _Submit(
      accommodation,
    );
  }
}

/// @nodoc
const $AccommodationFormEvent = _$AccommodationFormEventTearOff();

/// @nodoc
mixin _$AccommodationFormEvent {
  Accommodation get accommodation => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Accommodation accommodation) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Accommodation accommodation)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Accommodation accommodation)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccommodationFormEventCopyWith<AccommodationFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationFormEventCopyWith<$Res> {
  factory $AccommodationFormEventCopyWith(AccommodationFormEvent value,
          $Res Function(AccommodationFormEvent) then) =
      _$AccommodationFormEventCopyWithImpl<$Res>;
  $Res call({Accommodation accommodation});
}

/// @nodoc
class _$AccommodationFormEventCopyWithImpl<$Res>
    implements $AccommodationFormEventCopyWith<$Res> {
  _$AccommodationFormEventCopyWithImpl(this._value, this._then);

  final AccommodationFormEvent _value;
  // ignore: unused_field
  final $Res Function(AccommodationFormEvent) _then;

  @override
  $Res call({
    Object? accommodation = freezed,
  }) {
    return _then(_value.copyWith(
      accommodation: accommodation == freezed
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation,
    ));
  }
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res>
    implements $AccommodationFormEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  @override
  $Res call({Accommodation accommodation});
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res>
    extends _$AccommodationFormEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;

  @override
  $Res call({
    Object? accommodation = freezed,
  }) {
    return _then(_Submit(
      accommodation == freezed
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation,
    ));
  }
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit(this.accommodation);

  @override
  final Accommodation accommodation;

  @override
  String toString() {
    return 'AccommodationFormEvent.submit(accommodation: $accommodation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submit &&
            const DeepCollectionEquality()
                .equals(other.accommodation, accommodation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accommodation));

  @JsonKey(ignore: true)
  @override
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Accommodation accommodation) submit,
  }) {
    return submit(accommodation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Accommodation accommodation)? submit,
  }) {
    return submit?.call(accommodation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Accommodation accommodation)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(accommodation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements AccommodationFormEvent {
  const factory _Submit(Accommodation accommodation) = _$_Submit;

  @override
  Accommodation get accommodation;
  @override
  @JsonKey(ignore: true)
  _$SubmitCopyWith<_Submit> get copyWith => throw _privateConstructorUsedError;
}
