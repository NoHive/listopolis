// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'activelist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActivelistEventTearOff {
  const _$ActivelistEventTearOff();

// ignore: unused_element
  _LoadLists load() {
    return const _LoadLists();
  }
}

// ignore: unused_element
const $ActivelistEvent = _$ActivelistEventTearOff();

mixin _$ActivelistEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    @required Result orElse(),
  });
}

abstract class $ActivelistEventCopyWith<$Res> {
  factory $ActivelistEventCopyWith(
          ActivelistEvent value, $Res Function(ActivelistEvent) then) =
      _$ActivelistEventCopyWithImpl<$Res>;
}

class _$ActivelistEventCopyWithImpl<$Res>
    implements $ActivelistEventCopyWith<$Res> {
  _$ActivelistEventCopyWithImpl(this._value, this._then);

  final ActivelistEvent _value;
  // ignore: unused_field
  final $Res Function(ActivelistEvent) _then;
}

abstract class _$LoadListsCopyWith<$Res> {
  factory _$LoadListsCopyWith(
          _LoadLists value, $Res Function(_LoadLists) then) =
      __$LoadListsCopyWithImpl<$Res>;
}

class __$LoadListsCopyWithImpl<$Res> extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$LoadListsCopyWith<$Res> {
  __$LoadListsCopyWithImpl(_LoadLists _value, $Res Function(_LoadLists) _then)
      : super(_value, (v) => _then(v as _LoadLists));

  @override
  _LoadLists get _value => super._value as _LoadLists;
}

class _$_LoadLists implements _LoadLists {
  const _$_LoadLists();

  @override
  String toString() {
    return 'ActivelistEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadLists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
  }) {
    assert(load != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
  }) {
    assert(load != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadLists implements ActivelistEvent {
  const factory _LoadLists() = _$_LoadLists;
}

class _$ActivelistStateTearOff {
  const _$ActivelistStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded({@required List<ActiveList> userLists}) {
    return _Loaded(
      userLists: userLists,
    );
  }

// ignore: unused_element
  _Error error({@required Failure failure}) {
    return _Error(
      failure: failure,
    );
  }
}

// ignore: unused_element
const $ActivelistState = _$ActivelistStateTearOff();

mixin _$ActivelistState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result error(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $ActivelistStateCopyWith<$Res> {
  factory $ActivelistStateCopyWith(
          ActivelistState value, $Res Function(ActivelistState) then) =
      _$ActivelistStateCopyWithImpl<$Res>;
}

class _$ActivelistStateCopyWithImpl<$Res>
    implements $ActivelistStateCopyWith<$Res> {
  _$ActivelistStateCopyWithImpl(this._value, this._then);

  final ActivelistState _value;
  // ignore: unused_field
  final $Res Function(ActivelistState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ActivelistState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ActivelistState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ActivelistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ActivelistState {
  const factory _Loading() = _$_Loading;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<ActiveList> userLists});
}

class __$LoadedCopyWithImpl<$Res> extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object userLists = freezed,
  }) {
    return _then(_Loaded(
      userLists: userLists == freezed
          ? _value.userLists
          : userLists as List<ActiveList>,
    ));
  }
}

class _$_Loaded implements _Loaded {
  const _$_Loaded({@required this.userLists}) : assert(userLists != null);

  @override
  final List<ActiveList> userLists;

  @override
  String toString() {
    return 'ActivelistState.loaded(userLists: $userLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.userLists, userLists) ||
                const DeepCollectionEquality()
                    .equals(other.userLists, userLists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userLists);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(userLists);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(userLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ActivelistState {
  const factory _Loaded({@required List<ActiveList> userLists}) = _$_Loaded;

  List<ActiveList> get userLists;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class __$ErrorCopyWithImpl<$Res> extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_Error implements _Error {
  const _$_Error({@required this.failure}) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ActivelistState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ActivelistState {
  const factory _Error({@required Failure failure}) = _$_Error;

  Failure get failure;
  _$ErrorCopyWith<_Error> get copyWith;
}
