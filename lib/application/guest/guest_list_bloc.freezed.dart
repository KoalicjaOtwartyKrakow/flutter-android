// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guest_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GuestListEventTearOff {
  const _$GuestListEventTearOff();

  _DownloadPage downloadPage({required int offset}) {
    return _DownloadPage(
      offset: offset,
    );
  }
}

/// @nodoc
const $GuestListEvent = _$GuestListEventTearOff();

/// @nodoc
mixin _$GuestListEvent {
  int get offset => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) downloadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset)? downloadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? downloadPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadPage value) downloadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadPage value)? downloadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadPage value)? downloadPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestListEventCopyWith<GuestListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestListEventCopyWith<$Res> {
  factory $GuestListEventCopyWith(
          GuestListEvent value, $Res Function(GuestListEvent) then) =
      _$GuestListEventCopyWithImpl<$Res>;
  $Res call({int offset});
}

/// @nodoc
class _$GuestListEventCopyWithImpl<$Res>
    implements $GuestListEventCopyWith<$Res> {
  _$GuestListEventCopyWithImpl(this._value, this._then);

  final GuestListEvent _value;
  // ignore: unused_field
  final $Res Function(GuestListEvent) _then;

  @override
  $Res call({
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DownloadPageCopyWith<$Res>
    implements $GuestListEventCopyWith<$Res> {
  factory _$DownloadPageCopyWith(
          _DownloadPage value, $Res Function(_DownloadPage) then) =
      __$DownloadPageCopyWithImpl<$Res>;
  @override
  $Res call({int offset});
}

/// @nodoc
class __$DownloadPageCopyWithImpl<$Res>
    extends _$GuestListEventCopyWithImpl<$Res>
    implements _$DownloadPageCopyWith<$Res> {
  __$DownloadPageCopyWithImpl(
      _DownloadPage _value, $Res Function(_DownloadPage) _then)
      : super(_value, (v) => _then(v as _DownloadPage));

  @override
  _DownloadPage get _value => super._value as _DownloadPage;

  @override
  $Res call({
    Object? offset = freezed,
  }) {
    return _then(_DownloadPage(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DownloadPage implements _DownloadPage {
  const _$_DownloadPage({required this.offset});

  @override
  final int offset;

  @override
  String toString() {
    return 'GuestListEvent.downloadPage(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadPage &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$DownloadPageCopyWith<_DownloadPage> get copyWith =>
      __$DownloadPageCopyWithImpl<_DownloadPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) downloadPage,
  }) {
    return downloadPage(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset)? downloadPage,
  }) {
    return downloadPage?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? downloadPage,
    required TResult orElse(),
  }) {
    if (downloadPage != null) {
      return downloadPage(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadPage value) downloadPage,
  }) {
    return downloadPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadPage value)? downloadPage,
  }) {
    return downloadPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadPage value)? downloadPage,
    required TResult orElse(),
  }) {
    if (downloadPage != null) {
      return downloadPage(this);
    }
    return orElse();
  }
}

abstract class _DownloadPage implements GuestListEvent {
  const factory _DownloadPage({required int offset}) = _$_DownloadPage;

  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$DownloadPageCopyWith<_DownloadPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GuestListStateTearOff {
  const _$GuestListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _NextPageLoadSuccess pageLoadSuccess(List<Guest> guests) {
    return _NextPageLoadSuccess(
      guests,
    );
  }

  _FirstPageLoadFailure pageLoadFailure(Failure failure) {
    return _FirstPageLoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $GuestListState = _$GuestListStateTearOff();

/// @nodoc
mixin _$GuestListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Guest> guests) pageLoadSuccess,
    required TResult Function(Failure failure) pageLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Guest> guests)? pageLoadSuccess,
    TResult Function(Failure failure)? pageLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Guest> guests)? pageLoadSuccess,
    TResult Function(Failure failure)? pageLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextPageLoadSuccess value) pageLoadSuccess,
    required TResult Function(_FirstPageLoadFailure value) pageLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPageLoadSuccess value)? pageLoadSuccess,
    TResult Function(_FirstPageLoadFailure value)? pageLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPageLoadSuccess value)? pageLoadSuccess,
    TResult Function(_FirstPageLoadFailure value)? pageLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestListStateCopyWith<$Res> {
  factory $GuestListStateCopyWith(
          GuestListState value, $Res Function(GuestListState) then) =
      _$GuestListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GuestListStateCopyWithImpl<$Res>
    implements $GuestListStateCopyWith<$Res> {
  _$GuestListStateCopyWithImpl(this._value, this._then);

  final GuestListState _value;
  // ignore: unused_field
  final $Res Function(GuestListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GuestListStateCopyWithImpl<$Res>
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
    return 'GuestListState.initial()';
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
    required TResult Function(List<Guest> guests) pageLoadSuccess,
    required TResult Function(Failure failure) pageLoadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Guest> guests)? pageLoadSuccess,
    TResult Function(Failure failure)? pageLoadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Guest> guests)? pageLoadSuccess,
    TResult Function(Failure failure)? pageLoadFailure,
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
    required TResult Function(_NextPageLoadSuccess value) pageLoadSuccess,
    required TResult Function(_FirstPageLoadFailure value) pageLoadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPageLoadSuccess value)? pageLoadSuccess,
    TResult Function(_FirstPageLoadFailure value)? pageLoadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPageLoadSuccess value)? pageLoadSuccess,
    TResult Function(_FirstPageLoadFailure value)? pageLoadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GuestListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$NextPageLoadSuccessCopyWith<$Res> {
  factory _$NextPageLoadSuccessCopyWith(_NextPageLoadSuccess value,
          $Res Function(_NextPageLoadSuccess) then) =
      __$NextPageLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Guest> guests});
}

/// @nodoc
class __$NextPageLoadSuccessCopyWithImpl<$Res>
    extends _$GuestListStateCopyWithImpl<$Res>
    implements _$NextPageLoadSuccessCopyWith<$Res> {
  __$NextPageLoadSuccessCopyWithImpl(
      _NextPageLoadSuccess _value, $Res Function(_NextPageLoadSuccess) _then)
      : super(_value, (v) => _then(v as _NextPageLoadSuccess));

  @override
  _NextPageLoadSuccess get _value => super._value as _NextPageLoadSuccess;

  @override
  $Res call({
    Object? guests = freezed,
  }) {
    return _then(_NextPageLoadSuccess(
      guests == freezed
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
    ));
  }
}

/// @nodoc

class _$_NextPageLoadSuccess implements _NextPageLoadSuccess {
  const _$_NextPageLoadSuccess(this.guests);

  @override
  final List<Guest> guests;

  @override
  String toString() {
    return 'GuestListState.pageLoadSuccess(guests: $guests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NextPageLoadSuccess &&
            const DeepCollectionEquality().equals(other.guests, guests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guests));

  @JsonKey(ignore: true)
  @override
  _$NextPageLoadSuccessCopyWith<_NextPageLoadSuccess> get copyWith =>
      __$NextPageLoadSuccessCopyWithImpl<_NextPageLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Guest> guests) pageLoadSuccess,
    required TResult Function(Failure failure) pageLoadFailure,
  }) {
    return pageLoadSuccess(guests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Guest> guests)? pageLoadSuccess,
    TResult Function(Failure failure)? pageLoadFailure,
  }) {
    return pageLoadSuccess?.call(guests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Guest> guests)? pageLoadSuccess,
    TResult Function(Failure failure)? pageLoadFailure,
    required TResult orElse(),
  }) {
    if (pageLoadSuccess != null) {
      return pageLoadSuccess(guests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextPageLoadSuccess value) pageLoadSuccess,
    required TResult Function(_FirstPageLoadFailure value) pageLoadFailure,
  }) {
    return pageLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPageLoadSuccess value)? pageLoadSuccess,
    TResult Function(_FirstPageLoadFailure value)? pageLoadFailure,
  }) {
    return pageLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPageLoadSuccess value)? pageLoadSuccess,
    TResult Function(_FirstPageLoadFailure value)? pageLoadFailure,
    required TResult orElse(),
  }) {
    if (pageLoadSuccess != null) {
      return pageLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _NextPageLoadSuccess implements GuestListState {
  const factory _NextPageLoadSuccess(List<Guest> guests) =
      _$_NextPageLoadSuccess;

  List<Guest> get guests;
  @JsonKey(ignore: true)
  _$NextPageLoadSuccessCopyWith<_NextPageLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FirstPageLoadFailureCopyWith<$Res> {
  factory _$FirstPageLoadFailureCopyWith(_FirstPageLoadFailure value,
          $Res Function(_FirstPageLoadFailure) then) =
      __$FirstPageLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FirstPageLoadFailureCopyWithImpl<$Res>
    extends _$GuestListStateCopyWithImpl<$Res>
    implements _$FirstPageLoadFailureCopyWith<$Res> {
  __$FirstPageLoadFailureCopyWithImpl(
      _FirstPageLoadFailure _value, $Res Function(_FirstPageLoadFailure) _then)
      : super(_value, (v) => _then(v as _FirstPageLoadFailure));

  @override
  _FirstPageLoadFailure get _value => super._value as _FirstPageLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_FirstPageLoadFailure(
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

class _$_FirstPageLoadFailure implements _FirstPageLoadFailure {
  const _$_FirstPageLoadFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GuestListState.pageLoadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirstPageLoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FirstPageLoadFailureCopyWith<_FirstPageLoadFailure> get copyWith =>
      __$FirstPageLoadFailureCopyWithImpl<_FirstPageLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Guest> guests) pageLoadSuccess,
    required TResult Function(Failure failure) pageLoadFailure,
  }) {
    return pageLoadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Guest> guests)? pageLoadSuccess,
    TResult Function(Failure failure)? pageLoadFailure,
  }) {
    return pageLoadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Guest> guests)? pageLoadSuccess,
    TResult Function(Failure failure)? pageLoadFailure,
    required TResult orElse(),
  }) {
    if (pageLoadFailure != null) {
      return pageLoadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextPageLoadSuccess value) pageLoadSuccess,
    required TResult Function(_FirstPageLoadFailure value) pageLoadFailure,
  }) {
    return pageLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPageLoadSuccess value)? pageLoadSuccess,
    TResult Function(_FirstPageLoadFailure value)? pageLoadFailure,
  }) {
    return pageLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPageLoadSuccess value)? pageLoadSuccess,
    TResult Function(_FirstPageLoadFailure value)? pageLoadFailure,
    required TResult orElse(),
  }) {
    if (pageLoadFailure != null) {
      return pageLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _FirstPageLoadFailure implements GuestListState {
  const factory _FirstPageLoadFailure(Failure failure) =
      _$_FirstPageLoadFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FirstPageLoadFailureCopyWith<_FirstPageLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
