// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SignInStarted signInStarted() {
    return const _SignInStarted();
  }

  _SignOutStarted signOutStarted() {
    return const _SignOutStarted();
  }

  _RequestedSignInStatus requestedSignInStatus() {
    return const _RequestedSignInStatus();
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInStarted,
    required TResult Function() signOutStarted,
    required TResult Function() requestedSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInStarted,
    TResult Function()? signOutStarted,
    TResult Function()? requestedSignInStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_RequestedSignInStatus value)
        requestedSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_RequestedSignInStatus value)? requestedSignInStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
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
    return 'AuthenticationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInStarted,
    required TResult Function() signOutStarted,
    required TResult Function() requestedSignInStatus,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInStarted,
    TResult Function()? signOutStarted,
    TResult Function()? requestedSignInStatus,
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
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_RequestedSignInStatus value)
        requestedSignInStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_RequestedSignInStatus value)? requestedSignInStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SignInStartedCopyWith<$Res> {
  factory _$SignInStartedCopyWith(
          _SignInStarted value, $Res Function(_SignInStarted) then) =
      __$SignInStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInStartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$SignInStartedCopyWith<$Res> {
  __$SignInStartedCopyWithImpl(
      _SignInStarted _value, $Res Function(_SignInStarted) _then)
      : super(_value, (v) => _then(v as _SignInStarted));

  @override
  _SignInStarted get _value => super._value as _SignInStarted;
}

/// @nodoc

class _$_SignInStarted implements _SignInStarted {
  const _$_SignInStarted();

  @override
  String toString() {
    return 'AuthenticationEvent.signInStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInStarted,
    required TResult Function() signOutStarted,
    required TResult Function() requestedSignInStatus,
  }) {
    return signInStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInStarted,
    TResult Function()? signOutStarted,
    TResult Function()? requestedSignInStatus,
    required TResult orElse(),
  }) {
    if (signInStarted != null) {
      return signInStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_RequestedSignInStatus value)
        requestedSignInStatus,
  }) {
    return signInStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_RequestedSignInStatus value)? requestedSignInStatus,
    required TResult orElse(),
  }) {
    if (signInStarted != null) {
      return signInStarted(this);
    }
    return orElse();
  }
}

abstract class _SignInStarted implements AuthenticationEvent {
  const factory _SignInStarted() = _$_SignInStarted;
}

/// @nodoc
abstract class _$SignOutStartedCopyWith<$Res> {
  factory _$SignOutStartedCopyWith(
          _SignOutStarted value, $Res Function(_SignOutStarted) then) =
      __$SignOutStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutStartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$SignOutStartedCopyWith<$Res> {
  __$SignOutStartedCopyWithImpl(
      _SignOutStarted _value, $Res Function(_SignOutStarted) _then)
      : super(_value, (v) => _then(v as _SignOutStarted));

  @override
  _SignOutStarted get _value => super._value as _SignOutStarted;
}

/// @nodoc

class _$_SignOutStarted implements _SignOutStarted {
  const _$_SignOutStarted();

  @override
  String toString() {
    return 'AuthenticationEvent.signOutStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOutStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInStarted,
    required TResult Function() signOutStarted,
    required TResult Function() requestedSignInStatus,
  }) {
    return signOutStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInStarted,
    TResult Function()? signOutStarted,
    TResult Function()? requestedSignInStatus,
    required TResult orElse(),
  }) {
    if (signOutStarted != null) {
      return signOutStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_RequestedSignInStatus value)
        requestedSignInStatus,
  }) {
    return signOutStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_RequestedSignInStatus value)? requestedSignInStatus,
    required TResult orElse(),
  }) {
    if (signOutStarted != null) {
      return signOutStarted(this);
    }
    return orElse();
  }
}

abstract class _SignOutStarted implements AuthenticationEvent {
  const factory _SignOutStarted() = _$_SignOutStarted;
}

/// @nodoc
abstract class _$RequestedSignInStatusCopyWith<$Res> {
  factory _$RequestedSignInStatusCopyWith(_RequestedSignInStatus value,
          $Res Function(_RequestedSignInStatus) then) =
      __$RequestedSignInStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestedSignInStatusCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$RequestedSignInStatusCopyWith<$Res> {
  __$RequestedSignInStatusCopyWithImpl(_RequestedSignInStatus _value,
      $Res Function(_RequestedSignInStatus) _then)
      : super(_value, (v) => _then(v as _RequestedSignInStatus));

  @override
  _RequestedSignInStatus get _value => super._value as _RequestedSignInStatus;
}

/// @nodoc

class _$_RequestedSignInStatus implements _RequestedSignInStatus {
  const _$_RequestedSignInStatus();

  @override
  String toString() {
    return 'AuthenticationEvent.requestedSignInStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestedSignInStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInStarted,
    required TResult Function() signOutStarted,
    required TResult Function() requestedSignInStatus,
  }) {
    return requestedSignInStatus();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInStarted,
    TResult Function()? signOutStarted,
    TResult Function()? requestedSignInStatus,
    required TResult orElse(),
  }) {
    if (requestedSignInStatus != null) {
      return requestedSignInStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignInStarted value) signInStarted,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_RequestedSignInStatus value)
        requestedSignInStatus,
  }) {
    return requestedSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignInStarted value)? signInStarted,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_RequestedSignInStatus value)? requestedSignInStatus,
    required TResult orElse(),
  }) {
    if (requestedSignInStatus != null) {
      return requestedSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _RequestedSignInStatus implements AuthenticationEvent {
  const factory _RequestedSignInStatus() = _$_RequestedSignInStatus;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _WaitingForService waitingForService() {
    return const _WaitingForService();
  }

  _Error error({required Failure failure}) {
    return _Error(
      failure: failure,
    );
  }

  _SignedIn signedIn() {
    return const _SignedIn();
  }

  _SignedOut signedOut() {
    return const _SignedOut();
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForService,
    required TResult Function(Failure failure) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForService,
    TResult Function(Failure failure)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingForService value) waitingForService,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForService value)? waitingForService,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForService,
    required TResult Function(Failure failure) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForService,
    TResult Function(Failure failure)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
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
    required TResult Function(_WaitingForService value) waitingForService,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForService value)? waitingForService,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$WaitingForServiceCopyWith<$Res> {
  factory _$WaitingForServiceCopyWith(
          _WaitingForService value, $Res Function(_WaitingForService) then) =
      __$WaitingForServiceCopyWithImpl<$Res>;
}

/// @nodoc
class __$WaitingForServiceCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$WaitingForServiceCopyWith<$Res> {
  __$WaitingForServiceCopyWithImpl(
      _WaitingForService _value, $Res Function(_WaitingForService) _then)
      : super(_value, (v) => _then(v as _WaitingForService));

  @override
  _WaitingForService get _value => super._value as _WaitingForService;
}

/// @nodoc

class _$_WaitingForService implements _WaitingForService {
  const _$_WaitingForService();

  @override
  String toString() {
    return 'AuthenticationState.waitingForService()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WaitingForService);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForService,
    required TResult Function(Failure failure) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return waitingForService();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForService,
    TResult Function(Failure failure)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (waitingForService != null) {
      return waitingForService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingForService value) waitingForService,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return waitingForService(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForService value)? waitingForService,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (waitingForService != null) {
      return waitingForService(this);
    }
    return orElse();
  }
}

abstract class _WaitingForService implements AuthenticationState {
  const factory _WaitingForService() = _$_WaitingForService;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Error(
      failure: failure == freezed
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

class _$_Error implements _Error {
  const _$_Error({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthenticationState.error(failure: $failure)';
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

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForService,
    required TResult Function(Failure failure) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForService,
    TResult Function(Failure failure)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingForService value) waitingForService,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForService value)? waitingForService,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthenticationState {
  const factory _Error({required Failure failure}) = _$_Error;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignedInCopyWith<$Res> {
  factory _$SignedInCopyWith(_SignedIn value, $Res Function(_SignedIn) then) =
      __$SignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedInCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$SignedInCopyWith<$Res> {
  __$SignedInCopyWithImpl(_SignedIn _value, $Res Function(_SignedIn) _then)
      : super(_value, (v) => _then(v as _SignedIn));

  @override
  _SignedIn get _value => super._value as _SignedIn;
}

/// @nodoc

class _$_SignedIn implements _SignedIn {
  const _$_SignedIn();

  @override
  String toString() {
    return 'AuthenticationState.signedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForService,
    required TResult Function(Failure failure) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForService,
    TResult Function(Failure failure)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingForService value) waitingForService,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForService value)? waitingForService,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedIn implements AuthenticationState {
  const factory _SignedIn() = _$_SignedIn;
}

/// @nodoc
abstract class _$SignedOutCopyWith<$Res> {
  factory _$SignedOutCopyWith(
          _SignedOut value, $Res Function(_SignedOut) then) =
      __$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedOutCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$SignedOutCopyWith<$Res> {
  __$SignedOutCopyWithImpl(_SignedOut _value, $Res Function(_SignedOut) _then)
      : super(_value, (v) => _then(v as _SignedOut));

  @override
  _SignedOut get _value => super._value as _SignedOut;
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'AuthenticationState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingForService,
    required TResult Function(Failure failure) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingForService,
    TResult Function(Failure failure)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_WaitingForService value) waitingForService,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_WaitingForService value)? waitingForService,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthenticationState {
  const factory _SignedOut() = _$_SignedOut;
}
