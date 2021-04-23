// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  DeviceOffline deviceOffline() {
    return const DeviceOffline();
  }

  ServerConnectFailed serverConnectFailed() {
    return const ServerConnectFailed();
  }

  ServerAccessFailed serviceAccessFailed() {
    return const ServerAccessFailed();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceOffline,
    required TResult Function() serverConnectFailed,
    required TResult Function() serviceAccessFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceOffline,
    TResult Function()? serverConnectFailed,
    TResult Function()? serviceAccessFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceOffline value) deviceOffline,
    required TResult Function(ServerConnectFailed value) serverConnectFailed,
    required TResult Function(ServerAccessFailed value) serviceAccessFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceOffline value)? deviceOffline,
    TResult Function(ServerConnectFailed value)? serverConnectFailed,
    TResult Function(ServerAccessFailed value)? serviceAccessFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $DeviceOfflineCopyWith<$Res> {
  factory $DeviceOfflineCopyWith(
          DeviceOffline value, $Res Function(DeviceOffline) then) =
      _$DeviceOfflineCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceOfflineCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $DeviceOfflineCopyWith<$Res> {
  _$DeviceOfflineCopyWithImpl(
      DeviceOffline _value, $Res Function(DeviceOffline) _then)
      : super(_value, (v) => _then(v as DeviceOffline));

  @override
  DeviceOffline get _value => super._value as DeviceOffline;
}

/// @nodoc
class _$DeviceOffline implements DeviceOffline {
  const _$DeviceOffline();

  @override
  String toString() {
    return 'Failure.deviceOffline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceOffline,
    required TResult Function() serverConnectFailed,
    required TResult Function() serviceAccessFailed,
  }) {
    return deviceOffline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceOffline,
    TResult Function()? serverConnectFailed,
    TResult Function()? serviceAccessFailed,
    required TResult orElse(),
  }) {
    if (deviceOffline != null) {
      return deviceOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceOffline value) deviceOffline,
    required TResult Function(ServerConnectFailed value) serverConnectFailed,
    required TResult Function(ServerAccessFailed value) serviceAccessFailed,
  }) {
    return deviceOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceOffline value)? deviceOffline,
    TResult Function(ServerConnectFailed value)? serverConnectFailed,
    TResult Function(ServerAccessFailed value)? serviceAccessFailed,
    required TResult orElse(),
  }) {
    if (deviceOffline != null) {
      return deviceOffline(this);
    }
    return orElse();
  }
}

abstract class DeviceOffline implements Failure {
  const factory DeviceOffline() = _$DeviceOffline;
}

/// @nodoc
abstract class $ServerConnectFailedCopyWith<$Res> {
  factory $ServerConnectFailedCopyWith(
          ServerConnectFailed value, $Res Function(ServerConnectFailed) then) =
      _$ServerConnectFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerConnectFailedCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $ServerConnectFailedCopyWith<$Res> {
  _$ServerConnectFailedCopyWithImpl(
      ServerConnectFailed _value, $Res Function(ServerConnectFailed) _then)
      : super(_value, (v) => _then(v as ServerConnectFailed));

  @override
  ServerConnectFailed get _value => super._value as ServerConnectFailed;
}

/// @nodoc
class _$ServerConnectFailed implements ServerConnectFailed {
  const _$ServerConnectFailed();

  @override
  String toString() {
    return 'Failure.serverConnectFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerConnectFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceOffline,
    required TResult Function() serverConnectFailed,
    required TResult Function() serviceAccessFailed,
  }) {
    return serverConnectFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceOffline,
    TResult Function()? serverConnectFailed,
    TResult Function()? serviceAccessFailed,
    required TResult orElse(),
  }) {
    if (serverConnectFailed != null) {
      return serverConnectFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceOffline value) deviceOffline,
    required TResult Function(ServerConnectFailed value) serverConnectFailed,
    required TResult Function(ServerAccessFailed value) serviceAccessFailed,
  }) {
    return serverConnectFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceOffline value)? deviceOffline,
    TResult Function(ServerConnectFailed value)? serverConnectFailed,
    TResult Function(ServerAccessFailed value)? serviceAccessFailed,
    required TResult orElse(),
  }) {
    if (serverConnectFailed != null) {
      return serverConnectFailed(this);
    }
    return orElse();
  }
}

abstract class ServerConnectFailed implements Failure {
  const factory ServerConnectFailed() = _$ServerConnectFailed;
}

/// @nodoc
abstract class $ServerAccessFailedCopyWith<$Res> {
  factory $ServerAccessFailedCopyWith(
          ServerAccessFailed value, $Res Function(ServerAccessFailed) then) =
      _$ServerAccessFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerAccessFailedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerAccessFailedCopyWith<$Res> {
  _$ServerAccessFailedCopyWithImpl(
      ServerAccessFailed _value, $Res Function(ServerAccessFailed) _then)
      : super(_value, (v) => _then(v as ServerAccessFailed));

  @override
  ServerAccessFailed get _value => super._value as ServerAccessFailed;
}

/// @nodoc
class _$ServerAccessFailed implements ServerAccessFailed {
  const _$ServerAccessFailed();

  @override
  String toString() {
    return 'Failure.serviceAccessFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerAccessFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deviceOffline,
    required TResult Function() serverConnectFailed,
    required TResult Function() serviceAccessFailed,
  }) {
    return serviceAccessFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deviceOffline,
    TResult Function()? serverConnectFailed,
    TResult Function()? serviceAccessFailed,
    required TResult orElse(),
  }) {
    if (serviceAccessFailed != null) {
      return serviceAccessFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceOffline value) deviceOffline,
    required TResult Function(ServerConnectFailed value) serverConnectFailed,
    required TResult Function(ServerAccessFailed value) serviceAccessFailed,
  }) {
    return serviceAccessFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceOffline value)? deviceOffline,
    TResult Function(ServerConnectFailed value)? serverConnectFailed,
    TResult Function(ServerAccessFailed value)? serviceAccessFailed,
    required TResult orElse(),
  }) {
    if (serviceAccessFailed != null) {
      return serviceAccessFailed(this);
    }
    return orElse();
  }
}

abstract class ServerAccessFailed implements Failure {
  const factory ServerAccessFailed() = _$ServerAccessFailed;
}
