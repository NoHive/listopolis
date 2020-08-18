import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class RepositoryFailure with _$RepositoryFailure{
  const factory RepositoryFailure.deviceOffline() = DeviceOffline;
  const factory RepositoryFailure.serverConnectFailed() = ServerConnectFailed;
  const factory RepositoryFailure.serviceAccessFailed() = ServerAccessFailed;
}