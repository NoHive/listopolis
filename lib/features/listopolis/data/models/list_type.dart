import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_type.freezed.dart';

@freezed
abstract class ListType with _$ListType{
  const factory ListType.remember() = Remember;
  const factory ListType.todo() = ToDoList;
}

