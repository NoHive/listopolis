// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListTypeTearOff {
  const _$ListTypeTearOff();

  Remember remember() {
    return const Remember();
  }

  ToDoList todo() {
    return const ToDoList();
  }
}

/// @nodoc
const $ListType = _$ListTypeTearOff();

/// @nodoc
mixin _$ListType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() remember,
    required TResult Function() todo,
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
      _$ListTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListTypeCopyWithImpl<$Res> implements $ListTypeCopyWith<$Res> {
  _$ListTypeCopyWithImpl(this._value, this._then);

  final ListType _value;
  // ignore: unused_field
  final $Res Function(ListType) _then;
}

/// @nodoc
abstract class $RememberCopyWith<$Res> {
  factory $RememberCopyWith(Remember value, $Res Function(Remember) then) =
      _$RememberCopyWithImpl<$Res>;
}

/// @nodoc
class _$RememberCopyWithImpl<$Res> extends _$ListTypeCopyWithImpl<$Res>
    implements $RememberCopyWith<$Res> {
  _$RememberCopyWithImpl(Remember _value, $Res Function(Remember) _then)
      : super(_value, (v) => _then(v as Remember));

  @override
  Remember get _value => super._value as Remember;
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
    return identical(this, other) || (other is Remember);
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
abstract class $ToDoListCopyWith<$Res> {
  factory $ToDoListCopyWith(ToDoList value, $Res Function(ToDoList) then) =
      _$ToDoListCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToDoListCopyWithImpl<$Res> extends _$ListTypeCopyWithImpl<$Res>
    implements $ToDoListCopyWith<$Res> {
  _$ToDoListCopyWithImpl(ToDoList _value, $Res Function(ToDoList) _then)
      : super(_value, (v) => _then(v as ToDoList));

  @override
  ToDoList get _value => super._value as ToDoList;
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
    return identical(this, other) || (other is ToDoList);
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
