// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInStarted,
    TResult? Function()? signOutStarted,
    TResult? Function()? requestedSignInStatus,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInStarted value)? signInStarted,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_RequestedSignInStatus value)? requestedSignInStatus,
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
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInStarted,
    TResult? Function()? signOutStarted,
    TResult? Function()? requestedSignInStatus,
  }) {
    return started?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInStarted value)? signInStarted,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_RequestedSignInStatus value)? requestedSignInStatus,
  }) {
    return started?.call(this);
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
abstract class _$$_SignInStartedCopyWith<$Res> {
  factory _$$_SignInStartedCopyWith(
          _$_SignInStarted value, $Res Function(_$_SignInStarted) then) =
      __$$_SignInStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInStartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_SignInStarted>
    implements _$$_SignInStartedCopyWith<$Res> {
  __$$_SignInStartedCopyWithImpl(
      _$_SignInStarted _value, $Res Function(_$_SignInStarted) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInStarted);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInStarted,
    TResult? Function()? signOutStarted,
    TResult? Function()? requestedSignInStatus,
  }) {
    return signInStarted?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInStarted value)? signInStarted,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_RequestedSignInStatus value)? requestedSignInStatus,
  }) {
    return signInStarted?.call(this);
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
abstract class _$$_SignOutStartedCopyWith<$Res> {
  factory _$$_SignOutStartedCopyWith(
          _$_SignOutStarted value, $Res Function(_$_SignOutStarted) then) =
      __$$_SignOutStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutStartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_SignOutStarted>
    implements _$$_SignOutStartedCopyWith<$Res> {
  __$$_SignOutStartedCopyWithImpl(
      _$_SignOutStarted _value, $Res Function(_$_SignOutStarted) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOutStarted);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInStarted,
    TResult? Function()? signOutStarted,
    TResult? Function()? requestedSignInStatus,
  }) {
    return signOutStarted?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInStarted value)? signInStarted,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_RequestedSignInStatus value)? requestedSignInStatus,
  }) {
    return signOutStarted?.call(this);
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
abstract class _$$_RequestedSignInStatusCopyWith<$Res> {
  factory _$$_RequestedSignInStatusCopyWith(_$_RequestedSignInStatus value,
          $Res Function(_$_RequestedSignInStatus) then) =
      __$$_RequestedSignInStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestedSignInStatusCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_RequestedSignInStatus>
    implements _$$_RequestedSignInStatusCopyWith<$Res> {
  __$$_RequestedSignInStatusCopyWithImpl(_$_RequestedSignInStatus _value,
      $Res Function(_$_RequestedSignInStatus) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestedSignInStatus);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInStarted,
    TResult? Function()? signOutStarted,
    TResult? Function()? requestedSignInStatus,
  }) {
    return requestedSignInStatus?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignInStarted value)? signInStarted,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_RequestedSignInStatus value)? requestedSignInStatus,
  }) {
    return requestedSignInStatus?.call(this);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForService,
    TResult? Function(Failure failure)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForService value)? waitingForService,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
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
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForService,
    TResult? Function(Failure failure)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForService value)? waitingForService,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return initial?.call(this);
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
abstract class _$$_WaitingForServiceCopyWith<$Res> {
  factory _$$_WaitingForServiceCopyWith(_$_WaitingForService value,
          $Res Function(_$_WaitingForService) then) =
      __$$_WaitingForServiceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WaitingForServiceCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_WaitingForService>
    implements _$$_WaitingForServiceCopyWith<$Res> {
  __$$_WaitingForServiceCopyWithImpl(
      _$_WaitingForService _value, $Res Function(_$_WaitingForService) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WaitingForService);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForService,
    TResult? Function(Failure failure)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return waitingForService?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForService value)? waitingForService,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return waitingForService?.call(this);
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
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Error(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForService,
    TResult? Function(Failure failure)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return error?.call(failure);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForService value)? waitingForService,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return error?.call(this);
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
  const factory _Error({required final Failure failure}) = _$_Error;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignedInCopyWith<$Res> {
  factory _$$_SignedInCopyWith(
          _$_SignedIn value, $Res Function(_$_SignedIn) then) =
      __$$_SignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedInCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_SignedIn>
    implements _$$_SignedInCopyWith<$Res> {
  __$$_SignedInCopyWithImpl(
      _$_SignedIn _value, $Res Function(_$_SignedIn) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedIn);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForService,
    TResult? Function(Failure failure)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return signedIn?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForService value)? waitingForService,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return signedIn?.call(this);
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
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_SignedOut>
    implements _$$_SignedOutCopyWith<$Res> {
  __$$_SignedOutCopyWithImpl(
      _$_SignedOut _value, $Res Function(_$_SignedOut) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedOut);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingForService,
    TResult? Function(Failure failure)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_WaitingForService value)? waitingForService,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
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
