// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ListTypeTearOff {
  const _$ListTypeTearOff();

// ignore: unused_element
  Remember remember() {
    return const Remember();
  }

// ignore: unused_element
  ToDoList todo() {
    return const ToDoList();
  }
}

/// @nodoc
// ignore: unused_element
const $ListType = _$ListTypeTearOff();

/// @nodoc
mixin _$ListType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result remember(),
    @required Result todo(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result remember(),
    Result todo(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result remember(Remember value),
    @required Result todo(ToDoList value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result remember(Remember value),
    Result todo(ToDoList value),
    @required Result orElse(),
  });
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
  Result when<Result extends Object>({
    @required Result remember(),
    @required Result todo(),
  }) {
    assert(remember != null);
    assert(todo != null);
    return remember();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result remember(),
    Result todo(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remember != null) {
      return remember();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result remember(Remember value),
    @required Result todo(ToDoList value),
  }) {
    assert(remember != null);
    assert(todo != null);
    return remember(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result remember(Remember value),
    Result todo(ToDoList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  Result when<Result extends Object>({
    @required Result remember(),
    @required Result todo(),
  }) {
    assert(remember != null);
    assert(todo != null);
    return todo();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result remember(),
    Result todo(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todo != null) {
      return todo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result remember(Remember value),
    @required Result todo(ToDoList value),
  }) {
    assert(remember != null);
    assert(todo != null);
    return todo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result remember(Remember value),
    Result todo(ToDoList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todo != null) {
      return todo(this);
    }
    return orElse();
  }
}

abstract class ToDoList implements ListType {
  const factory ToDoList() = _$ToDoList;
}
