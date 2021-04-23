// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreatelistEventTearOff {
  const _$CreatelistEventTearOff();

  _Started started() {
    return const _Started();
  }

  _StartListCreation startListCreation() {
    return const _StartListCreation();
  }

  _StartTemplateCreation startTemplateCreation() {
    return const _StartTemplateCreation();
  }

  _ChangeList changeList({required CreateListParameter listParam}) {
    return _ChangeList(
      listParam: listParam,
    );
  }

  _SwitchToCreation switchViewToCreation(
      {required CreateListParameter listParam}) {
    return _SwitchToCreation(
      listParam: listParam,
    );
  }

  _SwitchToReorder switchViewToReorder(
      {required CreateListParameter listParam}) {
    return _SwitchToReorder(
      listParam: listParam,
    );
  }

  _AddListPositionAfter addListPositionAfter(
      {required CreateListParameter listParam, int index = 1}) {
    return _AddListPositionAfter(
      listParam: listParam,
      index: index,
    );
  }

  _RemoveListPosition removeListPosition(
      {required CreateListParameter listParam, int index = 1}) {
    return _RemoveListPosition(
      listParam: listParam,
      index: index,
    );
  }

  _ChangeItemOrder changeListItemOrder(
      {required CreateListParameter listParam,
      int oldIndex = 1,
      int newIndex = 1}) {
    return _ChangeItemOrder(
      listParam: listParam,
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  _EditActiveList editActiveList({required ActiveList list}) {
    return _EditActiveList(
      list: list,
    );
  }

  _EditTemplate editTemplate({required ListTemplate template}) {
    return _EditTemplate(
      template: template,
    );
  }

  _UseTemplateAsList useTemplateAsList({required ListTemplate template}) {
    return _UseTemplateAsList(
      template: template,
    );
  }
}

/// @nodoc
const $CreatelistEvent = _$CreatelistEventTearOff();

/// @nodoc
mixin _$CreatelistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatelistEventCopyWith<$Res> {
  factory $CreatelistEventCopyWith(
          CreatelistEvent value, $Res Function(CreatelistEvent) then) =
      _$CreatelistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatelistEventCopyWithImpl<$Res>
    implements $CreatelistEventCopyWith<$Res> {
  _$CreatelistEventCopyWithImpl(this._value, this._then);

  final CreatelistEvent _value;
  // ignore: unused_field
  final $Res Function(CreatelistEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CreatelistEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
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
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreatelistEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$StartListCreationCopyWith<$Res> {
  factory _$StartListCreationCopyWith(
          _StartListCreation value, $Res Function(_StartListCreation) then) =
      __$StartListCreationCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartListCreationCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$StartListCreationCopyWith<$Res> {
  __$StartListCreationCopyWithImpl(
      _StartListCreation _value, $Res Function(_StartListCreation) _then)
      : super(_value, (v) => _then(v as _StartListCreation));

  @override
  _StartListCreation get _value => super._value as _StartListCreation;
}

/// @nodoc
class _$_StartListCreation implements _StartListCreation {
  const _$_StartListCreation();

  @override
  String toString() {
    return 'CreatelistEvent.startListCreation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartListCreation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return startListCreation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (startListCreation != null) {
      return startListCreation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return startListCreation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (startListCreation != null) {
      return startListCreation(this);
    }
    return orElse();
  }
}

abstract class _StartListCreation implements CreatelistEvent {
  const factory _StartListCreation() = _$_StartListCreation;
}

/// @nodoc
abstract class _$StartTemplateCreationCopyWith<$Res> {
  factory _$StartTemplateCreationCopyWith(_StartTemplateCreation value,
          $Res Function(_StartTemplateCreation) then) =
      __$StartTemplateCreationCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartTemplateCreationCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$StartTemplateCreationCopyWith<$Res> {
  __$StartTemplateCreationCopyWithImpl(_StartTemplateCreation _value,
      $Res Function(_StartTemplateCreation) _then)
      : super(_value, (v) => _then(v as _StartTemplateCreation));

  @override
  _StartTemplateCreation get _value => super._value as _StartTemplateCreation;
}

/// @nodoc
class _$_StartTemplateCreation implements _StartTemplateCreation {
  const _$_StartTemplateCreation();

  @override
  String toString() {
    return 'CreatelistEvent.startTemplateCreation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartTemplateCreation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return startTemplateCreation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (startTemplateCreation != null) {
      return startTemplateCreation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return startTemplateCreation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (startTemplateCreation != null) {
      return startTemplateCreation(this);
    }
    return orElse();
  }
}

abstract class _StartTemplateCreation implements CreatelistEvent {
  const factory _StartTemplateCreation() = _$_StartTemplateCreation;
}

/// @nodoc
abstract class _$ChangeListCopyWith<$Res> {
  factory _$ChangeListCopyWith(
          _ChangeList value, $Res Function(_ChangeList) then) =
      __$ChangeListCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParam});
}

/// @nodoc
class __$ChangeListCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$ChangeListCopyWith<$Res> {
  __$ChangeListCopyWithImpl(
      _ChangeList _value, $Res Function(_ChangeList) _then)
      : super(_value, (v) => _then(v as _ChangeList));

  @override
  _ChangeList get _value => super._value as _ChangeList;

  @override
  $Res call({
    Object? listParam = freezed,
  }) {
    return _then(_ChangeList(
      listParam: listParam == freezed
          ? _value.listParam
          : listParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }
}

/// @nodoc
class _$_ChangeList implements _ChangeList {
  const _$_ChangeList({required this.listParam});

  @override
  final CreateListParameter listParam;

  @override
  String toString() {
    return 'CreatelistEvent.changeList(listParam: $listParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeList &&
            (identical(other.listParam, listParam) ||
                const DeepCollectionEquality()
                    .equals(other.listParam, listParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listParam);

  @JsonKey(ignore: true)
  @override
  _$ChangeListCopyWith<_ChangeList> get copyWith =>
      __$ChangeListCopyWithImpl<_ChangeList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return changeList(listParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (changeList != null) {
      return changeList(listParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return changeList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (changeList != null) {
      return changeList(this);
    }
    return orElse();
  }
}

abstract class _ChangeList implements CreatelistEvent {
  const factory _ChangeList({required CreateListParameter listParam}) =
      _$_ChangeList;

  CreateListParameter get listParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeListCopyWith<_ChangeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwitchToCreationCopyWith<$Res> {
  factory _$SwitchToCreationCopyWith(
          _SwitchToCreation value, $Res Function(_SwitchToCreation) then) =
      __$SwitchToCreationCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParam});
}

/// @nodoc
class __$SwitchToCreationCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$SwitchToCreationCopyWith<$Res> {
  __$SwitchToCreationCopyWithImpl(
      _SwitchToCreation _value, $Res Function(_SwitchToCreation) _then)
      : super(_value, (v) => _then(v as _SwitchToCreation));

  @override
  _SwitchToCreation get _value => super._value as _SwitchToCreation;

  @override
  $Res call({
    Object? listParam = freezed,
  }) {
    return _then(_SwitchToCreation(
      listParam: listParam == freezed
          ? _value.listParam
          : listParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }
}

/// @nodoc
class _$_SwitchToCreation implements _SwitchToCreation {
  const _$_SwitchToCreation({required this.listParam});

  @override
  final CreateListParameter listParam;

  @override
  String toString() {
    return 'CreatelistEvent.switchViewToCreation(listParam: $listParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwitchToCreation &&
            (identical(other.listParam, listParam) ||
                const DeepCollectionEquality()
                    .equals(other.listParam, listParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listParam);

  @JsonKey(ignore: true)
  @override
  _$SwitchToCreationCopyWith<_SwitchToCreation> get copyWith =>
      __$SwitchToCreationCopyWithImpl<_SwitchToCreation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return switchViewToCreation(listParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (switchViewToCreation != null) {
      return switchViewToCreation(listParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return switchViewToCreation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (switchViewToCreation != null) {
      return switchViewToCreation(this);
    }
    return orElse();
  }
}

abstract class _SwitchToCreation implements CreatelistEvent {
  const factory _SwitchToCreation({required CreateListParameter listParam}) =
      _$_SwitchToCreation;

  CreateListParameter get listParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SwitchToCreationCopyWith<_SwitchToCreation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwitchToReorderCopyWith<$Res> {
  factory _$SwitchToReorderCopyWith(
          _SwitchToReorder value, $Res Function(_SwitchToReorder) then) =
      __$SwitchToReorderCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParam});
}

/// @nodoc
class __$SwitchToReorderCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$SwitchToReorderCopyWith<$Res> {
  __$SwitchToReorderCopyWithImpl(
      _SwitchToReorder _value, $Res Function(_SwitchToReorder) _then)
      : super(_value, (v) => _then(v as _SwitchToReorder));

  @override
  _SwitchToReorder get _value => super._value as _SwitchToReorder;

  @override
  $Res call({
    Object? listParam = freezed,
  }) {
    return _then(_SwitchToReorder(
      listParam: listParam == freezed
          ? _value.listParam
          : listParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }
}

/// @nodoc
class _$_SwitchToReorder implements _SwitchToReorder {
  const _$_SwitchToReorder({required this.listParam});

  @override
  final CreateListParameter listParam;

  @override
  String toString() {
    return 'CreatelistEvent.switchViewToReorder(listParam: $listParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwitchToReorder &&
            (identical(other.listParam, listParam) ||
                const DeepCollectionEquality()
                    .equals(other.listParam, listParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listParam);

  @JsonKey(ignore: true)
  @override
  _$SwitchToReorderCopyWith<_SwitchToReorder> get copyWith =>
      __$SwitchToReorderCopyWithImpl<_SwitchToReorder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return switchViewToReorder(listParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (switchViewToReorder != null) {
      return switchViewToReorder(listParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return switchViewToReorder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (switchViewToReorder != null) {
      return switchViewToReorder(this);
    }
    return orElse();
  }
}

abstract class _SwitchToReorder implements CreatelistEvent {
  const factory _SwitchToReorder({required CreateListParameter listParam}) =
      _$_SwitchToReorder;

  CreateListParameter get listParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SwitchToReorderCopyWith<_SwitchToReorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddListPositionAfterCopyWith<$Res> {
  factory _$AddListPositionAfterCopyWith(_AddListPositionAfter value,
          $Res Function(_AddListPositionAfter) then) =
      __$AddListPositionAfterCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParam, int index});
}

/// @nodoc
class __$AddListPositionAfterCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$AddListPositionAfterCopyWith<$Res> {
  __$AddListPositionAfterCopyWithImpl(
      _AddListPositionAfter _value, $Res Function(_AddListPositionAfter) _then)
      : super(_value, (v) => _then(v as _AddListPositionAfter));

  @override
  _AddListPositionAfter get _value => super._value as _AddListPositionAfter;

  @override
  $Res call({
    Object? listParam = freezed,
    Object? index = freezed,
  }) {
    return _then(_AddListPositionAfter(
      listParam: listParam == freezed
          ? _value.listParam
          : listParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_AddListPositionAfter implements _AddListPositionAfter {
  const _$_AddListPositionAfter({required this.listParam, this.index = 1});

  @override
  final CreateListParameter listParam;
  @JsonKey(defaultValue: 1)
  @override
  final int index;

  @override
  String toString() {
    return 'CreatelistEvent.addListPositionAfter(listParam: $listParam, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddListPositionAfter &&
            (identical(other.listParam, listParam) ||
                const DeepCollectionEquality()
                    .equals(other.listParam, listParam)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listParam) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$AddListPositionAfterCopyWith<_AddListPositionAfter> get copyWith =>
      __$AddListPositionAfterCopyWithImpl<_AddListPositionAfter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return addListPositionAfter(listParam, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (addListPositionAfter != null) {
      return addListPositionAfter(listParam, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return addListPositionAfter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (addListPositionAfter != null) {
      return addListPositionAfter(this);
    }
    return orElse();
  }
}

abstract class _AddListPositionAfter implements CreatelistEvent {
  const factory _AddListPositionAfter(
      {required CreateListParameter listParam,
      int index}) = _$_AddListPositionAfter;

  CreateListParameter get listParam => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddListPositionAfterCopyWith<_AddListPositionAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveListPositionCopyWith<$Res> {
  factory _$RemoveListPositionCopyWith(
          _RemoveListPosition value, $Res Function(_RemoveListPosition) then) =
      __$RemoveListPositionCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParam, int index});
}

/// @nodoc
class __$RemoveListPositionCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$RemoveListPositionCopyWith<$Res> {
  __$RemoveListPositionCopyWithImpl(
      _RemoveListPosition _value, $Res Function(_RemoveListPosition) _then)
      : super(_value, (v) => _then(v as _RemoveListPosition));

  @override
  _RemoveListPosition get _value => super._value as _RemoveListPosition;

  @override
  $Res call({
    Object? listParam = freezed,
    Object? index = freezed,
  }) {
    return _then(_RemoveListPosition(
      listParam: listParam == freezed
          ? _value.listParam
          : listParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_RemoveListPosition implements _RemoveListPosition {
  const _$_RemoveListPosition({required this.listParam, this.index = 1});

  @override
  final CreateListParameter listParam;
  @JsonKey(defaultValue: 1)
  @override
  final int index;

  @override
  String toString() {
    return 'CreatelistEvent.removeListPosition(listParam: $listParam, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveListPosition &&
            (identical(other.listParam, listParam) ||
                const DeepCollectionEquality()
                    .equals(other.listParam, listParam)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listParam) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$RemoveListPositionCopyWith<_RemoveListPosition> get copyWith =>
      __$RemoveListPositionCopyWithImpl<_RemoveListPosition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return removeListPosition(listParam, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (removeListPosition != null) {
      return removeListPosition(listParam, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return removeListPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (removeListPosition != null) {
      return removeListPosition(this);
    }
    return orElse();
  }
}

abstract class _RemoveListPosition implements CreatelistEvent {
  const factory _RemoveListPosition(
      {required CreateListParameter listParam,
      int index}) = _$_RemoveListPosition;

  CreateListParameter get listParam => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveListPositionCopyWith<_RemoveListPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeItemOrderCopyWith<$Res> {
  factory _$ChangeItemOrderCopyWith(
          _ChangeItemOrder value, $Res Function(_ChangeItemOrder) then) =
      __$ChangeItemOrderCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParam, int oldIndex, int newIndex});
}

/// @nodoc
class __$ChangeItemOrderCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$ChangeItemOrderCopyWith<$Res> {
  __$ChangeItemOrderCopyWithImpl(
      _ChangeItemOrder _value, $Res Function(_ChangeItemOrder) _then)
      : super(_value, (v) => _then(v as _ChangeItemOrder));

  @override
  _ChangeItemOrder get _value => super._value as _ChangeItemOrder;

  @override
  $Res call({
    Object? listParam = freezed,
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_ChangeItemOrder(
      listParam: listParam == freezed
          ? _value.listParam
          : listParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
      oldIndex: oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_ChangeItemOrder implements _ChangeItemOrder {
  const _$_ChangeItemOrder(
      {required this.listParam, this.oldIndex = 1, this.newIndex = 1});

  @override
  final CreateListParameter listParam;
  @JsonKey(defaultValue: 1)
  @override
  final int oldIndex;
  @JsonKey(defaultValue: 1)
  @override
  final int newIndex;

  @override
  String toString() {
    return 'CreatelistEvent.changeListItemOrder(listParam: $listParam, oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeItemOrder &&
            (identical(other.listParam, listParam) ||
                const DeepCollectionEquality()
                    .equals(other.listParam, listParam)) &&
            (identical(other.oldIndex, oldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.oldIndex, oldIndex)) &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listParam) ^
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @JsonKey(ignore: true)
  @override
  _$ChangeItemOrderCopyWith<_ChangeItemOrder> get copyWith =>
      __$ChangeItemOrderCopyWithImpl<_ChangeItemOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return changeListItemOrder(listParam, oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (changeListItemOrder != null) {
      return changeListItemOrder(listParam, oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return changeListItemOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (changeListItemOrder != null) {
      return changeListItemOrder(this);
    }
    return orElse();
  }
}

abstract class _ChangeItemOrder implements CreatelistEvent {
  const factory _ChangeItemOrder(
      {required CreateListParameter listParam,
      int oldIndex,
      int newIndex}) = _$_ChangeItemOrder;

  CreateListParameter get listParam => throw _privateConstructorUsedError;
  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeItemOrderCopyWith<_ChangeItemOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditActiveListCopyWith<$Res> {
  factory _$EditActiveListCopyWith(
          _EditActiveList value, $Res Function(_EditActiveList) then) =
      __$EditActiveListCopyWithImpl<$Res>;
  $Res call({ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$EditActiveListCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$EditActiveListCopyWith<$Res> {
  __$EditActiveListCopyWithImpl(
      _EditActiveList _value, $Res Function(_EditActiveList) _then)
      : super(_value, (v) => _then(v as _EditActiveList));

  @override
  _EditActiveList get _value => super._value as _EditActiveList;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_EditActiveList(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
    ));
  }

  @override
  $ActiveListCopyWith<$Res> get list {
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

/// @nodoc
class _$_EditActiveList implements _EditActiveList {
  const _$_EditActiveList({required this.list});

  @override
  final ActiveList list;

  @override
  String toString() {
    return 'CreatelistEvent.editActiveList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditActiveList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$EditActiveListCopyWith<_EditActiveList> get copyWith =>
      __$EditActiveListCopyWithImpl<_EditActiveList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return editActiveList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (editActiveList != null) {
      return editActiveList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return editActiveList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (editActiveList != null) {
      return editActiveList(this);
    }
    return orElse();
  }
}

abstract class _EditActiveList implements CreatelistEvent {
  const factory _EditActiveList({required ActiveList list}) = _$_EditActiveList;

  ActiveList get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditActiveListCopyWith<_EditActiveList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditTemplateCopyWith<$Res> {
  factory _$EditTemplateCopyWith(
          _EditTemplate value, $Res Function(_EditTemplate) then) =
      __$EditTemplateCopyWithImpl<$Res>;
  $Res call({ListTemplate template});

  $ListTemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$EditTemplateCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$EditTemplateCopyWith<$Res> {
  __$EditTemplateCopyWithImpl(
      _EditTemplate _value, $Res Function(_EditTemplate) _then)
      : super(_value, (v) => _then(v as _EditTemplate));

  @override
  _EditTemplate get _value => super._value as _EditTemplate;

  @override
  $Res call({
    Object? template = freezed,
  }) {
    return _then(_EditTemplate(
      template: template == freezed
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as ListTemplate,
    ));
  }

  @override
  $ListTemplateCopyWith<$Res> get template {
    return $ListTemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc
class _$_EditTemplate implements _EditTemplate {
  const _$_EditTemplate({required this.template});

  @override
  final ListTemplate template;

  @override
  String toString() {
    return 'CreatelistEvent.editTemplate(template: $template)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditTemplate &&
            (identical(other.template, template) ||
                const DeepCollectionEquality()
                    .equals(other.template, template)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(template);

  @JsonKey(ignore: true)
  @override
  _$EditTemplateCopyWith<_EditTemplate> get copyWith =>
      __$EditTemplateCopyWithImpl<_EditTemplate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return editTemplate(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (editTemplate != null) {
      return editTemplate(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return editTemplate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (editTemplate != null) {
      return editTemplate(this);
    }
    return orElse();
  }
}

abstract class _EditTemplate implements CreatelistEvent {
  const factory _EditTemplate({required ListTemplate template}) =
      _$_EditTemplate;

  ListTemplate get template => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditTemplateCopyWith<_EditTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UseTemplateAsListCopyWith<$Res> {
  factory _$UseTemplateAsListCopyWith(
          _UseTemplateAsList value, $Res Function(_UseTemplateAsList) then) =
      __$UseTemplateAsListCopyWithImpl<$Res>;
  $Res call({ListTemplate template});

  $ListTemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$UseTemplateAsListCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$UseTemplateAsListCopyWith<$Res> {
  __$UseTemplateAsListCopyWithImpl(
      _UseTemplateAsList _value, $Res Function(_UseTemplateAsList) _then)
      : super(_value, (v) => _then(v as _UseTemplateAsList));

  @override
  _UseTemplateAsList get _value => super._value as _UseTemplateAsList;

  @override
  $Res call({
    Object? template = freezed,
  }) {
    return _then(_UseTemplateAsList(
      template: template == freezed
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as ListTemplate,
    ));
  }

  @override
  $ListTemplateCopyWith<$Res> get template {
    return $ListTemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc
class _$_UseTemplateAsList implements _UseTemplateAsList {
  const _$_UseTemplateAsList({required this.template});

  @override
  final ListTemplate template;

  @override
  String toString() {
    return 'CreatelistEvent.useTemplateAsList(template: $template)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UseTemplateAsList &&
            (identical(other.template, template) ||
                const DeepCollectionEquality()
                    .equals(other.template, template)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(template);

  @JsonKey(ignore: true)
  @override
  _$UseTemplateAsListCopyWith<_UseTemplateAsList> get copyWith =>
      __$UseTemplateAsListCopyWithImpl<_UseTemplateAsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startListCreation,
    required TResult Function() startTemplateCreation,
    required TResult Function(CreateListParameter listParam) changeList,
    required TResult Function(CreateListParameter listParam)
        switchViewToCreation,
    required TResult Function(CreateListParameter listParam)
        switchViewToReorder,
    required TResult Function(CreateListParameter listParam, int index)
        addListPositionAfter,
    required TResult Function(CreateListParameter listParam, int index)
        removeListPosition,
    required TResult Function(
            CreateListParameter listParam, int oldIndex, int newIndex)
        changeListItemOrder,
    required TResult Function(ActiveList list) editActiveList,
    required TResult Function(ListTemplate template) editTemplate,
    required TResult Function(ListTemplate template) useTemplateAsList,
  }) {
    return useTemplateAsList(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startListCreation,
    TResult Function()? startTemplateCreation,
    TResult Function(CreateListParameter listParam)? changeList,
    TResult Function(CreateListParameter listParam)? switchViewToCreation,
    TResult Function(CreateListParameter listParam)? switchViewToReorder,
    TResult Function(CreateListParameter listParam, int index)?
        addListPositionAfter,
    TResult Function(CreateListParameter listParam, int index)?
        removeListPosition,
    TResult Function(CreateListParameter listParam, int oldIndex, int newIndex)?
        changeListItemOrder,
    TResult Function(ActiveList list)? editActiveList,
    TResult Function(ListTemplate template)? editTemplate,
    TResult Function(ListTemplate template)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (useTemplateAsList != null) {
      return useTemplateAsList(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartListCreation value) startListCreation,
    required TResult Function(_StartTemplateCreation value)
        startTemplateCreation,
    required TResult Function(_ChangeList value) changeList,
    required TResult Function(_SwitchToCreation value) switchViewToCreation,
    required TResult Function(_SwitchToReorder value) switchViewToReorder,
    required TResult Function(_AddListPositionAfter value) addListPositionAfter,
    required TResult Function(_RemoveListPosition value) removeListPosition,
    required TResult Function(_ChangeItemOrder value) changeListItemOrder,
    required TResult Function(_EditActiveList value) editActiveList,
    required TResult Function(_EditTemplate value) editTemplate,
    required TResult Function(_UseTemplateAsList value) useTemplateAsList,
  }) {
    return useTemplateAsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartListCreation value)? startListCreation,
    TResult Function(_StartTemplateCreation value)? startTemplateCreation,
    TResult Function(_ChangeList value)? changeList,
    TResult Function(_SwitchToCreation value)? switchViewToCreation,
    TResult Function(_SwitchToReorder value)? switchViewToReorder,
    TResult Function(_AddListPositionAfter value)? addListPositionAfter,
    TResult Function(_RemoveListPosition value)? removeListPosition,
    TResult Function(_ChangeItemOrder value)? changeListItemOrder,
    TResult Function(_EditActiveList value)? editActiveList,
    TResult Function(_EditTemplate value)? editTemplate,
    TResult Function(_UseTemplateAsList value)? useTemplateAsList,
    required TResult orElse(),
  }) {
    if (useTemplateAsList != null) {
      return useTemplateAsList(this);
    }
    return orElse();
  }
}

abstract class _UseTemplateAsList implements CreatelistEvent {
  const factory _UseTemplateAsList({required ListTemplate template}) =
      _$_UseTemplateAsList;

  ListTemplate get template => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UseTemplateAsListCopyWith<_UseTemplateAsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreatelistStateTearOff {
  const _$CreatelistStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ListChanged listChanged({required CreateListParameter creationParam}) {
    return _ListChanged(
      creationParam: creationParam,
    );
  }

  _SwitchedToCreate switchedToCreate(
      {required CreateListParameter creationParam}) {
    return _SwitchedToCreate(
      creationParam: creationParam,
    );
  }

  _SwitchedToReorder switchedToReorder(
      {required CreateListParameter creationParam}) {
    return _SwitchedToReorder(
      creationParam: creationParam,
    );
  }
}

/// @nodoc
const $CreatelistState = _$CreatelistStateTearOff();

/// @nodoc
mixin _$CreatelistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateListParameter creationParam) listChanged,
    required TResult Function(CreateListParameter creationParam)
        switchedToCreate,
    required TResult Function(CreateListParameter creationParam)
        switchedToReorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateListParameter creationParam)? listChanged,
    TResult Function(CreateListParameter creationParam)? switchedToCreate,
    TResult Function(CreateListParameter creationParam)? switchedToReorder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListChanged value) listChanged,
    required TResult Function(_SwitchedToCreate value) switchedToCreate,
    required TResult Function(_SwitchedToReorder value) switchedToReorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListChanged value)? listChanged,
    TResult Function(_SwitchedToCreate value)? switchedToCreate,
    TResult Function(_SwitchedToReorder value)? switchedToReorder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatelistStateCopyWith<$Res> {
  factory $CreatelistStateCopyWith(
          CreatelistState value, $Res Function(CreatelistState) then) =
      _$CreatelistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatelistStateCopyWithImpl<$Res>
    implements $CreatelistStateCopyWith<$Res> {
  _$CreatelistStateCopyWithImpl(this._value, this._then);

  final CreatelistState _value;
  // ignore: unused_field
  final $Res Function(CreatelistState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CreatelistStateCopyWithImpl<$Res>
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
    return 'CreatelistState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateListParameter creationParam) listChanged,
    required TResult Function(CreateListParameter creationParam)
        switchedToCreate,
    required TResult Function(CreateListParameter creationParam)
        switchedToReorder,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateListParameter creationParam)? listChanged,
    TResult Function(CreateListParameter creationParam)? switchedToCreate,
    TResult Function(CreateListParameter creationParam)? switchedToReorder,
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
    required TResult Function(_ListChanged value) listChanged,
    required TResult Function(_SwitchedToCreate value) switchedToCreate,
    required TResult Function(_SwitchedToReorder value) switchedToReorder,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListChanged value)? listChanged,
    TResult Function(_SwitchedToCreate value)? switchedToCreate,
    TResult Function(_SwitchedToReorder value)? switchedToReorder,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreatelistState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ListChangedCopyWith<$Res> {
  factory _$ListChangedCopyWith(
          _ListChanged value, $Res Function(_ListChanged) then) =
      __$ListChangedCopyWithImpl<$Res>;
  $Res call({CreateListParameter creationParam});
}

/// @nodoc
class __$ListChangedCopyWithImpl<$Res>
    extends _$CreatelistStateCopyWithImpl<$Res>
    implements _$ListChangedCopyWith<$Res> {
  __$ListChangedCopyWithImpl(
      _ListChanged _value, $Res Function(_ListChanged) _then)
      : super(_value, (v) => _then(v as _ListChanged));

  @override
  _ListChanged get _value => super._value as _ListChanged;

  @override
  $Res call({
    Object? creationParam = freezed,
  }) {
    return _then(_ListChanged(
      creationParam: creationParam == freezed
          ? _value.creationParam
          : creationParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }
}

/// @nodoc
class _$_ListChanged implements _ListChanged {
  const _$_ListChanged({required this.creationParam});

  @override
  final CreateListParameter creationParam;

  @override
  String toString() {
    return 'CreatelistState.listChanged(creationParam: $creationParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListChanged &&
            (identical(other.creationParam, creationParam) ||
                const DeepCollectionEquality()
                    .equals(other.creationParam, creationParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(creationParam);

  @JsonKey(ignore: true)
  @override
  _$ListChangedCopyWith<_ListChanged> get copyWith =>
      __$ListChangedCopyWithImpl<_ListChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateListParameter creationParam) listChanged,
    required TResult Function(CreateListParameter creationParam)
        switchedToCreate,
    required TResult Function(CreateListParameter creationParam)
        switchedToReorder,
  }) {
    return listChanged(creationParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateListParameter creationParam)? listChanged,
    TResult Function(CreateListParameter creationParam)? switchedToCreate,
    TResult Function(CreateListParameter creationParam)? switchedToReorder,
    required TResult orElse(),
  }) {
    if (listChanged != null) {
      return listChanged(creationParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListChanged value) listChanged,
    required TResult Function(_SwitchedToCreate value) switchedToCreate,
    required TResult Function(_SwitchedToReorder value) switchedToReorder,
  }) {
    return listChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListChanged value)? listChanged,
    TResult Function(_SwitchedToCreate value)? switchedToCreate,
    TResult Function(_SwitchedToReorder value)? switchedToReorder,
    required TResult orElse(),
  }) {
    if (listChanged != null) {
      return listChanged(this);
    }
    return orElse();
  }
}

abstract class _ListChanged implements CreatelistState {
  const factory _ListChanged({required CreateListParameter creationParam}) =
      _$_ListChanged;

  CreateListParameter get creationParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ListChangedCopyWith<_ListChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwitchedToCreateCopyWith<$Res> {
  factory _$SwitchedToCreateCopyWith(
          _SwitchedToCreate value, $Res Function(_SwitchedToCreate) then) =
      __$SwitchedToCreateCopyWithImpl<$Res>;
  $Res call({CreateListParameter creationParam});
}

/// @nodoc
class __$SwitchedToCreateCopyWithImpl<$Res>
    extends _$CreatelistStateCopyWithImpl<$Res>
    implements _$SwitchedToCreateCopyWith<$Res> {
  __$SwitchedToCreateCopyWithImpl(
      _SwitchedToCreate _value, $Res Function(_SwitchedToCreate) _then)
      : super(_value, (v) => _then(v as _SwitchedToCreate));

  @override
  _SwitchedToCreate get _value => super._value as _SwitchedToCreate;

  @override
  $Res call({
    Object? creationParam = freezed,
  }) {
    return _then(_SwitchedToCreate(
      creationParam: creationParam == freezed
          ? _value.creationParam
          : creationParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }
}

/// @nodoc
class _$_SwitchedToCreate implements _SwitchedToCreate {
  const _$_SwitchedToCreate({required this.creationParam});

  @override
  final CreateListParameter creationParam;

  @override
  String toString() {
    return 'CreatelistState.switchedToCreate(creationParam: $creationParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwitchedToCreate &&
            (identical(other.creationParam, creationParam) ||
                const DeepCollectionEquality()
                    .equals(other.creationParam, creationParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(creationParam);

  @JsonKey(ignore: true)
  @override
  _$SwitchedToCreateCopyWith<_SwitchedToCreate> get copyWith =>
      __$SwitchedToCreateCopyWithImpl<_SwitchedToCreate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateListParameter creationParam) listChanged,
    required TResult Function(CreateListParameter creationParam)
        switchedToCreate,
    required TResult Function(CreateListParameter creationParam)
        switchedToReorder,
  }) {
    return switchedToCreate(creationParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateListParameter creationParam)? listChanged,
    TResult Function(CreateListParameter creationParam)? switchedToCreate,
    TResult Function(CreateListParameter creationParam)? switchedToReorder,
    required TResult orElse(),
  }) {
    if (switchedToCreate != null) {
      return switchedToCreate(creationParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListChanged value) listChanged,
    required TResult Function(_SwitchedToCreate value) switchedToCreate,
    required TResult Function(_SwitchedToReorder value) switchedToReorder,
  }) {
    return switchedToCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListChanged value)? listChanged,
    TResult Function(_SwitchedToCreate value)? switchedToCreate,
    TResult Function(_SwitchedToReorder value)? switchedToReorder,
    required TResult orElse(),
  }) {
    if (switchedToCreate != null) {
      return switchedToCreate(this);
    }
    return orElse();
  }
}

abstract class _SwitchedToCreate implements CreatelistState {
  const factory _SwitchedToCreate(
      {required CreateListParameter creationParam}) = _$_SwitchedToCreate;

  CreateListParameter get creationParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SwitchedToCreateCopyWith<_SwitchedToCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwitchedToReorderCopyWith<$Res> {
  factory _$SwitchedToReorderCopyWith(
          _SwitchedToReorder value, $Res Function(_SwitchedToReorder) then) =
      __$SwitchedToReorderCopyWithImpl<$Res>;
  $Res call({CreateListParameter creationParam});
}

/// @nodoc
class __$SwitchedToReorderCopyWithImpl<$Res>
    extends _$CreatelistStateCopyWithImpl<$Res>
    implements _$SwitchedToReorderCopyWith<$Res> {
  __$SwitchedToReorderCopyWithImpl(
      _SwitchedToReorder _value, $Res Function(_SwitchedToReorder) _then)
      : super(_value, (v) => _then(v as _SwitchedToReorder));

  @override
  _SwitchedToReorder get _value => super._value as _SwitchedToReorder;

  @override
  $Res call({
    Object? creationParam = freezed,
  }) {
    return _then(_SwitchedToReorder(
      creationParam: creationParam == freezed
          ? _value.creationParam
          : creationParam // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }
}

/// @nodoc
class _$_SwitchedToReorder implements _SwitchedToReorder {
  const _$_SwitchedToReorder({required this.creationParam});

  @override
  final CreateListParameter creationParam;

  @override
  String toString() {
    return 'CreatelistState.switchedToReorder(creationParam: $creationParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwitchedToReorder &&
            (identical(other.creationParam, creationParam) ||
                const DeepCollectionEquality()
                    .equals(other.creationParam, creationParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(creationParam);

  @JsonKey(ignore: true)
  @override
  _$SwitchedToReorderCopyWith<_SwitchedToReorder> get copyWith =>
      __$SwitchedToReorderCopyWithImpl<_SwitchedToReorder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateListParameter creationParam) listChanged,
    required TResult Function(CreateListParameter creationParam)
        switchedToCreate,
    required TResult Function(CreateListParameter creationParam)
        switchedToReorder,
  }) {
    return switchedToReorder(creationParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateListParameter creationParam)? listChanged,
    TResult Function(CreateListParameter creationParam)? switchedToCreate,
    TResult Function(CreateListParameter creationParam)? switchedToReorder,
    required TResult orElse(),
  }) {
    if (switchedToReorder != null) {
      return switchedToReorder(creationParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListChanged value) listChanged,
    required TResult Function(_SwitchedToCreate value) switchedToCreate,
    required TResult Function(_SwitchedToReorder value) switchedToReorder,
  }) {
    return switchedToReorder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListChanged value)? listChanged,
    TResult Function(_SwitchedToCreate value)? switchedToCreate,
    TResult Function(_SwitchedToReorder value)? switchedToReorder,
    required TResult orElse(),
  }) {
    if (switchedToReorder != null) {
      return switchedToReorder(this);
    }
    return orElse();
  }
}

abstract class _SwitchedToReorder implements CreatelistState {
  const factory _SwitchedToReorder(
      {required CreateListParameter creationParam}) = _$_SwitchedToReorder;

  CreateListParameter get creationParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SwitchedToReorderCopyWith<_SwitchedToReorder> get copyWith =>
      throw _privateConstructorUsedError;
}
