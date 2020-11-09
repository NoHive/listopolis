// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'template_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TemplateEventTearOff {
  const _$TemplateEventTearOff();

// ignore: unused_element
  _LoadTemplates load() {
    return const _LoadTemplates();
  }

// ignore: unused_element
  _InsertNewTemplate insertNewTemplate(
      {@required CreateListParameter listParameter}) {
    return _InsertNewTemplate(
      listParameter: listParameter,
    );
  }

// ignore: unused_element
  _DeleteTemplatePosition deleteTemplatePosition(
      {@required ListTemplate list, @required ListTemplatePosition position}) {
    return _DeleteTemplatePosition(
      list: list,
      position: position,
    );
  }

// ignore: unused_element
  _DeleteTemplate deleteTemplate({@required ListTemplate list}) {
    return _DeleteTemplate(
      list: list,
    );
  }

// ignore: unused_element
  _ReplaceTemplate replaceTemplate(
      {@required CreateListParameter listParameter,
      @required ListTemplate list}) {
    return _ReplaceTemplate(
      listParameter: listParameter,
      list: list,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TemplateEvent = _$TemplateEventTearOff();

/// @nodoc
mixin _$TemplateEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insertNewTemplate(CreateListParameter listParameter),
    @required
        Result deleteTemplatePosition(
            ListTemplate list, ListTemplatePosition position),
    @required Result deleteTemplate(ListTemplate list),
    @required
        Result replaceTemplate(
            CreateListParameter listParameter, ListTemplate list),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insertNewTemplate(CreateListParameter listParameter),
    Result deleteTemplatePosition(
        ListTemplate list, ListTemplatePosition position),
    Result deleteTemplate(ListTemplate list),
    Result replaceTemplate(
        CreateListParameter listParameter, ListTemplate list),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadTemplates value),
    @required Result insertNewTemplate(_InsertNewTemplate value),
    @required Result deleteTemplatePosition(_DeleteTemplatePosition value),
    @required Result deleteTemplate(_DeleteTemplate value),
    @required Result replaceTemplate(_ReplaceTemplate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadTemplates value),
    Result insertNewTemplate(_InsertNewTemplate value),
    Result deleteTemplatePosition(_DeleteTemplatePosition value),
    Result deleteTemplate(_DeleteTemplate value),
    Result replaceTemplate(_ReplaceTemplate value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TemplateEventCopyWith<$Res> {
  factory $TemplateEventCopyWith(
          TemplateEvent value, $Res Function(TemplateEvent) then) =
      _$TemplateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TemplateEventCopyWithImpl<$Res>
    implements $TemplateEventCopyWith<$Res> {
  _$TemplateEventCopyWithImpl(this._value, this._then);

  final TemplateEvent _value;
  // ignore: unused_field
  final $Res Function(TemplateEvent) _then;
}

/// @nodoc
abstract class _$LoadTemplatesCopyWith<$Res> {
  factory _$LoadTemplatesCopyWith(
          _LoadTemplates value, $Res Function(_LoadTemplates) then) =
      __$LoadTemplatesCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadTemplatesCopyWithImpl<$Res>
    extends _$TemplateEventCopyWithImpl<$Res>
    implements _$LoadTemplatesCopyWith<$Res> {
  __$LoadTemplatesCopyWithImpl(
      _LoadTemplates _value, $Res Function(_LoadTemplates) _then)
      : super(_value, (v) => _then(v as _LoadTemplates));

  @override
  _LoadTemplates get _value => super._value as _LoadTemplates;
}

/// @nodoc
class _$_LoadTemplates implements _LoadTemplates {
  const _$_LoadTemplates();

  @override
  String toString() {
    return 'TemplateEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadTemplates);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insertNewTemplate(CreateListParameter listParameter),
    @required
        Result deleteTemplatePosition(
            ListTemplate list, ListTemplatePosition position),
    @required Result deleteTemplate(ListTemplate list),
    @required
        Result replaceTemplate(
            CreateListParameter listParameter, ListTemplate list),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insertNewTemplate(CreateListParameter listParameter),
    Result deleteTemplatePosition(
        ListTemplate list, ListTemplatePosition position),
    Result deleteTemplate(ListTemplate list),
    Result replaceTemplate(
        CreateListParameter listParameter, ListTemplate list),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadTemplates value),
    @required Result insertNewTemplate(_InsertNewTemplate value),
    @required Result deleteTemplatePosition(_DeleteTemplatePosition value),
    @required Result deleteTemplate(_DeleteTemplate value),
    @required Result replaceTemplate(_ReplaceTemplate value),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadTemplates value),
    Result insertNewTemplate(_InsertNewTemplate value),
    Result deleteTemplatePosition(_DeleteTemplatePosition value),
    Result deleteTemplate(_DeleteTemplate value),
    Result replaceTemplate(_ReplaceTemplate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadTemplates implements TemplateEvent {
  const factory _LoadTemplates() = _$_LoadTemplates;
}

/// @nodoc
abstract class _$InsertNewTemplateCopyWith<$Res> {
  factory _$InsertNewTemplateCopyWith(
          _InsertNewTemplate value, $Res Function(_InsertNewTemplate) then) =
      __$InsertNewTemplateCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParameter});
}

/// @nodoc
class __$InsertNewTemplateCopyWithImpl<$Res>
    extends _$TemplateEventCopyWithImpl<$Res>
    implements _$InsertNewTemplateCopyWith<$Res> {
  __$InsertNewTemplateCopyWithImpl(
      _InsertNewTemplate _value, $Res Function(_InsertNewTemplate) _then)
      : super(_value, (v) => _then(v as _InsertNewTemplate));

  @override
  _InsertNewTemplate get _value => super._value as _InsertNewTemplate;

  @override
  $Res call({
    Object listParameter = freezed,
  }) {
    return _then(_InsertNewTemplate(
      listParameter: listParameter == freezed
          ? _value.listParameter
          : listParameter as CreateListParameter,
    ));
  }
}

/// @nodoc
class _$_InsertNewTemplate implements _InsertNewTemplate {
  const _$_InsertNewTemplate({@required this.listParameter})
      : assert(listParameter != null);

  @override
  final CreateListParameter listParameter;

  @override
  String toString() {
    return 'TemplateEvent.insertNewTemplate(listParameter: $listParameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InsertNewTemplate &&
            (identical(other.listParameter, listParameter) ||
                const DeepCollectionEquality()
                    .equals(other.listParameter, listParameter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listParameter);

  @override
  _$InsertNewTemplateCopyWith<_InsertNewTemplate> get copyWith =>
      __$InsertNewTemplateCopyWithImpl<_InsertNewTemplate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insertNewTemplate(CreateListParameter listParameter),
    @required
        Result deleteTemplatePosition(
            ListTemplate list, ListTemplatePosition position),
    @required Result deleteTemplate(ListTemplate list),
    @required
        Result replaceTemplate(
            CreateListParameter listParameter, ListTemplate list),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return insertNewTemplate(listParameter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insertNewTemplate(CreateListParameter listParameter),
    Result deleteTemplatePosition(
        ListTemplate list, ListTemplatePosition position),
    Result deleteTemplate(ListTemplate list),
    Result replaceTemplate(
        CreateListParameter listParameter, ListTemplate list),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insertNewTemplate != null) {
      return insertNewTemplate(listParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadTemplates value),
    @required Result insertNewTemplate(_InsertNewTemplate value),
    @required Result deleteTemplatePosition(_DeleteTemplatePosition value),
    @required Result deleteTemplate(_DeleteTemplate value),
    @required Result replaceTemplate(_ReplaceTemplate value),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return insertNewTemplate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadTemplates value),
    Result insertNewTemplate(_InsertNewTemplate value),
    Result deleteTemplatePosition(_DeleteTemplatePosition value),
    Result deleteTemplate(_DeleteTemplate value),
    Result replaceTemplate(_ReplaceTemplate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insertNewTemplate != null) {
      return insertNewTemplate(this);
    }
    return orElse();
  }
}

abstract class _InsertNewTemplate implements TemplateEvent {
  const factory _InsertNewTemplate(
      {@required CreateListParameter listParameter}) = _$_InsertNewTemplate;

  CreateListParameter get listParameter;
  _$InsertNewTemplateCopyWith<_InsertNewTemplate> get copyWith;
}

/// @nodoc
abstract class _$DeleteTemplatePositionCopyWith<$Res> {
  factory _$DeleteTemplatePositionCopyWith(_DeleteTemplatePosition value,
          $Res Function(_DeleteTemplatePosition) then) =
      __$DeleteTemplatePositionCopyWithImpl<$Res>;
  $Res call({ListTemplate list, ListTemplatePosition position});

  $ListTemplateCopyWith<$Res> get list;
  $ListTemplatePositionCopyWith<$Res> get position;
}

/// @nodoc
class __$DeleteTemplatePositionCopyWithImpl<$Res>
    extends _$TemplateEventCopyWithImpl<$Res>
    implements _$DeleteTemplatePositionCopyWith<$Res> {
  __$DeleteTemplatePositionCopyWithImpl(_DeleteTemplatePosition _value,
      $Res Function(_DeleteTemplatePosition) _then)
      : super(_value, (v) => _then(v as _DeleteTemplatePosition));

  @override
  _DeleteTemplatePosition get _value => super._value as _DeleteTemplatePosition;

  @override
  $Res call({
    Object list = freezed,
    Object position = freezed,
  }) {
    return _then(_DeleteTemplatePosition(
      list: list == freezed ? _value.list : list as ListTemplate,
      position: position == freezed
          ? _value.position
          : position as ListTemplatePosition,
    ));
  }

  @override
  $ListTemplateCopyWith<$Res> get list {
    if (_value.list == null) {
      return null;
    }
    return $ListTemplateCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }

  @override
  $ListTemplatePositionCopyWith<$Res> get position {
    if (_value.position == null) {
      return null;
    }
    return $ListTemplatePositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
class _$_DeleteTemplatePosition implements _DeleteTemplatePosition {
  const _$_DeleteTemplatePosition(
      {@required this.list, @required this.position})
      : assert(list != null),
        assert(position != null);

  @override
  final ListTemplate list;
  @override
  final ListTemplatePosition position;

  @override
  String toString() {
    return 'TemplateEvent.deleteTemplatePosition(list: $list, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteTemplatePosition &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(position);

  @override
  _$DeleteTemplatePositionCopyWith<_DeleteTemplatePosition> get copyWith =>
      __$DeleteTemplatePositionCopyWithImpl<_DeleteTemplatePosition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insertNewTemplate(CreateListParameter listParameter),
    @required
        Result deleteTemplatePosition(
            ListTemplate list, ListTemplatePosition position),
    @required Result deleteTemplate(ListTemplate list),
    @required
        Result replaceTemplate(
            CreateListParameter listParameter, ListTemplate list),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return deleteTemplatePosition(list, position);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insertNewTemplate(CreateListParameter listParameter),
    Result deleteTemplatePosition(
        ListTemplate list, ListTemplatePosition position),
    Result deleteTemplate(ListTemplate list),
    Result replaceTemplate(
        CreateListParameter listParameter, ListTemplate list),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteTemplatePosition != null) {
      return deleteTemplatePosition(list, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadTemplates value),
    @required Result insertNewTemplate(_InsertNewTemplate value),
    @required Result deleteTemplatePosition(_DeleteTemplatePosition value),
    @required Result deleteTemplate(_DeleteTemplate value),
    @required Result replaceTemplate(_ReplaceTemplate value),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return deleteTemplatePosition(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadTemplates value),
    Result insertNewTemplate(_InsertNewTemplate value),
    Result deleteTemplatePosition(_DeleteTemplatePosition value),
    Result deleteTemplate(_DeleteTemplate value),
    Result replaceTemplate(_ReplaceTemplate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteTemplatePosition != null) {
      return deleteTemplatePosition(this);
    }
    return orElse();
  }
}

abstract class _DeleteTemplatePosition implements TemplateEvent {
  const factory _DeleteTemplatePosition(
      {@required ListTemplate list,
      @required ListTemplatePosition position}) = _$_DeleteTemplatePosition;

  ListTemplate get list;
  ListTemplatePosition get position;
  _$DeleteTemplatePositionCopyWith<_DeleteTemplatePosition> get copyWith;
}

/// @nodoc
abstract class _$DeleteTemplateCopyWith<$Res> {
  factory _$DeleteTemplateCopyWith(
          _DeleteTemplate value, $Res Function(_DeleteTemplate) then) =
      __$DeleteTemplateCopyWithImpl<$Res>;
  $Res call({ListTemplate list});

  $ListTemplateCopyWith<$Res> get list;
}

/// @nodoc
class __$DeleteTemplateCopyWithImpl<$Res>
    extends _$TemplateEventCopyWithImpl<$Res>
    implements _$DeleteTemplateCopyWith<$Res> {
  __$DeleteTemplateCopyWithImpl(
      _DeleteTemplate _value, $Res Function(_DeleteTemplate) _then)
      : super(_value, (v) => _then(v as _DeleteTemplate));

  @override
  _DeleteTemplate get _value => super._value as _DeleteTemplate;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_DeleteTemplate(
      list: list == freezed ? _value.list : list as ListTemplate,
    ));
  }

  @override
  $ListTemplateCopyWith<$Res> get list {
    if (_value.list == null) {
      return null;
    }
    return $ListTemplateCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

/// @nodoc
class _$_DeleteTemplate implements _DeleteTemplate {
  const _$_DeleteTemplate({@required this.list}) : assert(list != null);

  @override
  final ListTemplate list;

  @override
  String toString() {
    return 'TemplateEvent.deleteTemplate(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteTemplate &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @override
  _$DeleteTemplateCopyWith<_DeleteTemplate> get copyWith =>
      __$DeleteTemplateCopyWithImpl<_DeleteTemplate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insertNewTemplate(CreateListParameter listParameter),
    @required
        Result deleteTemplatePosition(
            ListTemplate list, ListTemplatePosition position),
    @required Result deleteTemplate(ListTemplate list),
    @required
        Result replaceTemplate(
            CreateListParameter listParameter, ListTemplate list),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return deleteTemplate(list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insertNewTemplate(CreateListParameter listParameter),
    Result deleteTemplatePosition(
        ListTemplate list, ListTemplatePosition position),
    Result deleteTemplate(ListTemplate list),
    Result replaceTemplate(
        CreateListParameter listParameter, ListTemplate list),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteTemplate != null) {
      return deleteTemplate(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadTemplates value),
    @required Result insertNewTemplate(_InsertNewTemplate value),
    @required Result deleteTemplatePosition(_DeleteTemplatePosition value),
    @required Result deleteTemplate(_DeleteTemplate value),
    @required Result replaceTemplate(_ReplaceTemplate value),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return deleteTemplate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadTemplates value),
    Result insertNewTemplate(_InsertNewTemplate value),
    Result deleteTemplatePosition(_DeleteTemplatePosition value),
    Result deleteTemplate(_DeleteTemplate value),
    Result replaceTemplate(_ReplaceTemplate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteTemplate != null) {
      return deleteTemplate(this);
    }
    return orElse();
  }
}

abstract class _DeleteTemplate implements TemplateEvent {
  const factory _DeleteTemplate({@required ListTemplate list}) =
      _$_DeleteTemplate;

  ListTemplate get list;
  _$DeleteTemplateCopyWith<_DeleteTemplate> get copyWith;
}

/// @nodoc
abstract class _$ReplaceTemplateCopyWith<$Res> {
  factory _$ReplaceTemplateCopyWith(
          _ReplaceTemplate value, $Res Function(_ReplaceTemplate) then) =
      __$ReplaceTemplateCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParameter, ListTemplate list});

  $ListTemplateCopyWith<$Res> get list;
}

/// @nodoc
class __$ReplaceTemplateCopyWithImpl<$Res>
    extends _$TemplateEventCopyWithImpl<$Res>
    implements _$ReplaceTemplateCopyWith<$Res> {
  __$ReplaceTemplateCopyWithImpl(
      _ReplaceTemplate _value, $Res Function(_ReplaceTemplate) _then)
      : super(_value, (v) => _then(v as _ReplaceTemplate));

  @override
  _ReplaceTemplate get _value => super._value as _ReplaceTemplate;

  @override
  $Res call({
    Object listParameter = freezed,
    Object list = freezed,
  }) {
    return _then(_ReplaceTemplate(
      listParameter: listParameter == freezed
          ? _value.listParameter
          : listParameter as CreateListParameter,
      list: list == freezed ? _value.list : list as ListTemplate,
    ));
  }

  @override
  $ListTemplateCopyWith<$Res> get list {
    if (_value.list == null) {
      return null;
    }
    return $ListTemplateCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

/// @nodoc
class _$_ReplaceTemplate implements _ReplaceTemplate {
  const _$_ReplaceTemplate({@required this.listParameter, @required this.list})
      : assert(listParameter != null),
        assert(list != null);

  @override
  final CreateListParameter listParameter;
  @override
  final ListTemplate list;

  @override
  String toString() {
    return 'TemplateEvent.replaceTemplate(listParameter: $listParameter, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReplaceTemplate &&
            (identical(other.listParameter, listParameter) ||
                const DeepCollectionEquality()
                    .equals(other.listParameter, listParameter)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listParameter) ^
      const DeepCollectionEquality().hash(list);

  @override
  _$ReplaceTemplateCopyWith<_ReplaceTemplate> get copyWith =>
      __$ReplaceTemplateCopyWithImpl<_ReplaceTemplate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insertNewTemplate(CreateListParameter listParameter),
    @required
        Result deleteTemplatePosition(
            ListTemplate list, ListTemplatePosition position),
    @required Result deleteTemplate(ListTemplate list),
    @required
        Result replaceTemplate(
            CreateListParameter listParameter, ListTemplate list),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return replaceTemplate(listParameter, list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insertNewTemplate(CreateListParameter listParameter),
    Result deleteTemplatePosition(
        ListTemplate list, ListTemplatePosition position),
    Result deleteTemplate(ListTemplate list),
    Result replaceTemplate(
        CreateListParameter listParameter, ListTemplate list),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (replaceTemplate != null) {
      return replaceTemplate(listParameter, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadTemplates value),
    @required Result insertNewTemplate(_InsertNewTemplate value),
    @required Result deleteTemplatePosition(_DeleteTemplatePosition value),
    @required Result deleteTemplate(_DeleteTemplate value),
    @required Result replaceTemplate(_ReplaceTemplate value),
  }) {
    assert(load != null);
    assert(insertNewTemplate != null);
    assert(deleteTemplatePosition != null);
    assert(deleteTemplate != null);
    assert(replaceTemplate != null);
    return replaceTemplate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadTemplates value),
    Result insertNewTemplate(_InsertNewTemplate value),
    Result deleteTemplatePosition(_DeleteTemplatePosition value),
    Result deleteTemplate(_DeleteTemplate value),
    Result replaceTemplate(_ReplaceTemplate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (replaceTemplate != null) {
      return replaceTemplate(this);
    }
    return orElse();
  }
}

abstract class _ReplaceTemplate implements TemplateEvent {
  const factory _ReplaceTemplate(
      {@required CreateListParameter listParameter,
      @required ListTemplate list}) = _$_ReplaceTemplate;

  CreateListParameter get listParameter;
  ListTemplate get list;
  _$ReplaceTemplateCopyWith<_ReplaceTemplate> get copyWith;
}

/// @nodoc
class _$TemplateStateTearOff {
  const _$TemplateStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded({@required List<ListTemplate> userTemplates}) {
    return _Loaded(
      userTemplates: userTemplates,
    );
  }

// ignore: unused_element
  _Error error({@required Failure failure}) {
    return _Error(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TemplateState = _$TemplateStateTearOff();

/// @nodoc
mixin _$TemplateState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ListTemplate> userTemplates),
    @required Result error(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ListTemplate> userTemplates),
    Result error(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TemplateStateCopyWith<$Res> {
  factory $TemplateStateCopyWith(
          TemplateState value, $Res Function(TemplateState) then) =
      _$TemplateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TemplateStateCopyWithImpl<$Res>
    implements $TemplateStateCopyWith<$Res> {
  _$TemplateStateCopyWithImpl(this._value, this._then);

  final TemplateState _value;
  // ignore: unused_field
  final $Res Function(TemplateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TemplateStateCopyWithImpl<$Res>
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
    return 'TemplateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ListTemplate> userTemplates),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ListTemplate> userTemplates),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TemplateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TemplateStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TemplateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ListTemplate> userTemplates),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ListTemplate> userTemplates),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TemplateState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<ListTemplate> userTemplates});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$TemplateStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object userTemplates = freezed,
  }) {
    return _then(_Loaded(
      userTemplates: userTemplates == freezed
          ? _value.userTemplates
          : userTemplates as List<ListTemplate>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded({@required this.userTemplates})
      : assert(userTemplates != null);

  @override
  final List<ListTemplate> userTemplates;

  @override
  String toString() {
    return 'TemplateState.loaded(userTemplates: $userTemplates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.userTemplates, userTemplates) ||
                const DeepCollectionEquality()
                    .equals(other.userTemplates, userTemplates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userTemplates);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ListTemplate> userTemplates),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(userTemplates);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ListTemplate> userTemplates),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(userTemplates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TemplateState {
  const factory _Loaded({@required List<ListTemplate> userTemplates}) =
      _$_Loaded;

  List<ListTemplate> get userTemplates;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TemplateStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error({@required this.failure}) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TemplateState.error(failure: $failure)';
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

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ListTemplate> userTemplates),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ListTemplate> userTemplates),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TemplateState {
  const factory _Error({@required Failure failure}) = _$_Error;

  Failure get failure;
  _$ErrorCopyWith<_Error> get copyWith;
}
