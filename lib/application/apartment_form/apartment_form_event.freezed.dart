// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'apartment_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApartmentFormEventTearOff {
  const _$ApartmentFormEventTearOff();

  _Submit submit(Accommodation accommodation) {
    return _Submit(
      accommodation,
    );
  }
}

/// @nodoc
const $ApartmentFormEvent = _$ApartmentFormEventTearOff();

/// @nodoc
mixin _$ApartmentFormEvent {
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
  $ApartmentFormEventCopyWith<ApartmentFormEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApartmentFormEventCopyWith<$Res> {
  factory $ApartmentFormEventCopyWith(ApartmentFormEvent value, $Res Function(ApartmentFormEvent) then) =
      _$ApartmentFormEventCopyWithImpl<$Res>;

  $Res call({Accommodation accommodation});
}

/// @nodoc
class _$ApartmentFormEventCopyWithImpl<$Res> implements $ApartmentFormEventCopyWith<$Res> {
  _$ApartmentFormEventCopyWithImpl(this._value, this._then);

  final ApartmentFormEvent _value;

  // ignore: unused_field
  final $Res Function(ApartmentFormEvent) _then;

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
abstract class _$SubmitCopyWith<$Res> implements $ApartmentFormEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) = __$SubmitCopyWithImpl<$Res>;

  @override
  $Res call({Accommodation accommodation});
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$ApartmentFormEventCopyWithImpl<$Res> implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then) : super(_value, (v) => _then(v as _Submit));

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
    return 'ApartmentFormEvent.submit(accommodation: $accommodation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submit &&
            const DeepCollectionEquality().equals(other.accommodation, accommodation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(accommodation));

  @JsonKey(ignore: true)
  @override
  _$SubmitCopyWith<_Submit> get copyWith => __$SubmitCopyWithImpl<_Submit>(this, _$identity);

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

abstract class _Submit implements ApartmentFormEvent {
  const factory _Submit(Accommodation accommodation) = _$_Submit;

  @override
  Accommodation get accommodation;

  @override
  @JsonKey(ignore: true)
  _$SubmitCopyWith<_Submit> get copyWith => throw _privateConstructorUsedError;
}
