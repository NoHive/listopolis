import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure{
  const factory Failure.deviceOffline() = DeviceOffline;
  const factory Failure.serverConnectFailed() = ServerConnectFailed;
  const factory Failure.serviceAccessFailed() = ServerAccessFailed;
  const factory Failure.userAuthentificationFailed() = UserAuthentificationFailed;
}