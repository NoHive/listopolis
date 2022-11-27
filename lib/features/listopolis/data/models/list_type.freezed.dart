// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() remember,
    required TResult Function() todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? remember,
    TResult? Function()? todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? remember,
    TResult Function()? todo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remember value) remember,
    required TResult Function(ToDoList value) todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remember value)? remember,
    TResult? Function(ToDoList value)? todo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remember value)? remember,
    TResult Function(ToDoList value)? todo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTypeCopyWith<$Res> {
  factory $ListTypeCopyWith(ListType value, $Res Function(ListType) then) =
      _$ListTypeCopyWithImpl<$Res, ListType>;
}

/// @nodoc
class _$ListTypeCopyWithImpl<$Res, $Val extends ListType>
    implements $ListTypeCopyWith<$Res> {
  _$ListTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RememberCopyWith<$Res> {
  factory _$$RememberCopyWith(
          _$Remember value, $Res Function(_$Remember) then) =
      __$$RememberCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RememberCopyWithImpl<$Res>
    extends _$ListTypeCopyWithImpl<$Res, _$Remember>
    implements _$$RememberCopyWith<$Res> {
  __$$RememberCopyWithImpl(_$Remember _value, $Res Function(_$Remember) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Remember implements Remember {
  const _$Remember();

  @override
  String toString() {
    return 'ListType.remember()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Remember);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() remember,
    required TResult Function() todo,
  }) {
    return remember();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? remember,
    TResult? Function()? todo,
  }) {
    return remember?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? remember,
    TResult Function()? todo,
    required TResult orElse(),
  }) {
    if (remember != null) {
      return remember();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remember value) remember,
    required TResult Function(ToDoList value) todo,
  }) {
    return remember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remember value)? remember,
    TResult? Function(ToDoList value)? todo,
  }) {
    return remember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remember value)? remember,
    TResult Function(ToDoList value)? todo,
    required TResult orElse(),
  }) {
    if (remember != null) {
      return remember(this);
    }
    return orElse();
  }
}

abstract class Remember implements ListType {
  const factory Remember() = _$Remember;
}

/// @nodoc
abstract class _$$ToDoListCopyWith<$Res> {
  factory _$$ToDoListCopyWith(
          _$ToDoList value, $Res Function(_$ToDoList) then) =
      __$$ToDoListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToDoListCopyWithImpl<$Res>
    extends _$ListTypeCopyWithImpl<$Res, _$ToDoList>
    implements _$$ToDoListCopyWith<$Res> {
  __$$ToDoListCopyWithImpl(_$ToDoList _value, $Res Function(_$ToDoList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToDoList implements ToDoList {
  const _$ToDoList();

  @override
  String toString() {
    return 'ListType.todo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToDoList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() remember,
    required TResult Function() todo,
  }) {
    return todo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? remember,
    TResult? Function()? todo,
  }) {
    return todo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? remember,
    TResult Function()? todo,
    required TResult orElse(),
  }) {
    if (todo != null) {
      return todo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remember value) remember,
    required TResult Function(ToDoList value) todo,
  }) {
    return todo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remember value)? remember,
    TResult? Function(ToDoList value)? todo,
  }) {
    return todo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remember value)? remember,
    TResult Function(ToDoList value)? todo,
    required TResult orElse(),
  }) {
    if (todo != null) {
      return todo(this);
    }
    return orElse();
  }
}

abstract class ToDoList implements ListType {
  const factory ToDoList() = _$ToDoList;
}
