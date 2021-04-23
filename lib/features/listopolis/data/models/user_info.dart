
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
abstract class UserInfo implements _$UserInfo{
  @JsonSerializable()
  const UserInfo._();
  const factory UserInfo({required String userID}) = _UserInfo;
  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}