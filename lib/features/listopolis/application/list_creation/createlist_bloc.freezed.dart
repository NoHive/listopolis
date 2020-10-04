// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'createlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreatelistEventTearOff {
  const _$CreatelistEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _StartListCreation startListCreation() {
    return const _StartListCreation();
  }

// ignore: unused_element
  _StartTemplateCreation startTemplateCreation() {
    return const _StartTemplateCreation();
  }

// ignore: unused_element
  _ChangeList changeList() {
    return const _ChangeList();
  }

// ignore: unused_element
  _SwitchToCreation switchViewToCreation() {
    return const _SwitchToCreation();
  }

// ignore: unused_element
  _SwitchToReorder switchViewToReorder() {
    return const _SwitchToReorder();
  }

// ignore: unused_element
  _AddListPositionAfter addListPositionAfter({@required int index}) {
    return _AddListPositionAfter(
      index: index,
    );
  }

// ignore: unused_element
  _RemoveListPosition removeListPosition({@required int index}) {
    return _RemoveListPosition(
      index: index,
    );
  }

// ignore: unused_element
  _ChangeItemOrder changeListItemOrder(
      {@required int oldIndex, @required int newIndex}) {
    return _ChangeItemOrder(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

// ignore: unused_element
  _EditActiveList editActiveList({@required ActiveList list}) {
    return _EditActiveList(
      list: list,
    );
  }

// ignore: unused_element
  _EditTemplate editTemplate({@required ListTemplate template}) {
    return _EditTemplate(
      template: template,
    );
  }

// ignore: unused_element
  _UseTemplateAsList useTemplateAsList({@required ListTemplate template}) {
    return _UseTemplateAsList(
      template: template,
    );
  }
}

// ignore: unused_element
const $CreatelistEvent = _$CreatelistEventTearOff();

mixin _$CreatelistEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  });
}

abstract class $CreatelistEventCopyWith<$Res> {
  factory $CreatelistEventCopyWith(
          CreatelistEvent value, $Res Function(CreatelistEvent) then) =
      _$CreatelistEventCopyWithImpl<$Res>;
}

class _$CreatelistEventCopyWithImpl<$Res>
    implements $CreatelistEventCopyWith<$Res> {
  _$CreatelistEventCopyWithImpl(this._value, this._then);

  final CreatelistEvent _value;
  // ignore: unused_field
  final $Res Function(CreatelistEvent) _then;
}

abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

class __$StartedCopyWithImpl<$Res> extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

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
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreatelistEvent {
  const factory _Started() = _$_Started;
}

abstract class _$StartListCreationCopyWith<$Res> {
  factory _$StartListCreationCopyWith(
          _StartListCreation value, $Res Function(_StartListCreation) then) =
      __$StartListCreationCopyWithImpl<$Res>;
}

class __$StartListCreationCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$StartListCreationCopyWith<$Res> {
  __$StartListCreationCopyWithImpl(
      _StartListCreation _value, $Res Function(_StartListCreation) _then)
      : super(_value, (v) => _then(v as _StartListCreation));

  @override
  _StartListCreation get _value => super._value as _StartListCreation;
}

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
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return startListCreation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startListCreation != null) {
      return startListCreation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return startListCreation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startListCreation != null) {
      return startListCreation(this);
    }
    return orElse();
  }
}

abstract class _StartListCreation implements CreatelistEvent {
  const factory _StartListCreation() = _$_StartListCreation;
}

abstract class _$StartTemplateCreationCopyWith<$Res> {
  factory _$StartTemplateCreationCopyWith(_StartTemplateCreation value,
          $Res Function(_StartTemplateCreation) then) =
      __$StartTemplateCreationCopyWithImpl<$Res>;
}

class __$StartTemplateCreationCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$StartTemplateCreationCopyWith<$Res> {
  __$StartTemplateCreationCopyWithImpl(_StartTemplateCreation _value,
      $Res Function(_StartTemplateCreation) _then)
      : super(_value, (v) => _then(v as _StartTemplateCreation));

  @override
  _StartTemplateCreation get _value => super._value as _StartTemplateCreation;
}

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
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return startTemplateCreation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startTemplateCreation != null) {
      return startTemplateCreation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return startTemplateCreation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startTemplateCreation != null) {
      return startTemplateCreation(this);
    }
    return orElse();
  }
}

abstract class _StartTemplateCreation implements CreatelistEvent {
  const factory _StartTemplateCreation() = _$_StartTemplateCreation;
}

abstract class _$ChangeListCopyWith<$Res> {
  factory _$ChangeListCopyWith(
          _ChangeList value, $Res Function(_ChangeList) then) =
      __$ChangeListCopyWithImpl<$Res>;
}

class __$ChangeListCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$ChangeListCopyWith<$Res> {
  __$ChangeListCopyWithImpl(
      _ChangeList _value, $Res Function(_ChangeList) _then)
      : super(_value, (v) => _then(v as _ChangeList));

  @override
  _ChangeList get _value => super._value as _ChangeList;
}

class _$_ChangeList implements _ChangeList {
  const _$_ChangeList();

  @override
  String toString() {
    return 'CreatelistEvent.changeList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChangeList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return changeList();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeList != null) {
      return changeList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return changeList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeList != null) {
      return changeList(this);
    }
    return orElse();
  }
}

abstract class _ChangeList implements CreatelistEvent {
  const factory _ChangeList() = _$_ChangeList;
}

abstract class _$SwitchToCreationCopyWith<$Res> {
  factory _$SwitchToCreationCopyWith(
          _SwitchToCreation value, $Res Function(_SwitchToCreation) then) =
      __$SwitchToCreationCopyWithImpl<$Res>;
}

class __$SwitchToCreationCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$SwitchToCreationCopyWith<$Res> {
  __$SwitchToCreationCopyWithImpl(
      _SwitchToCreation _value, $Res Function(_SwitchToCreation) _then)
      : super(_value, (v) => _then(v as _SwitchToCreation));

  @override
  _SwitchToCreation get _value => super._value as _SwitchToCreation;
}

class _$_SwitchToCreation implements _SwitchToCreation {
  const _$_SwitchToCreation();

  @override
  String toString() {
    return 'CreatelistEvent.switchViewToCreation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SwitchToCreation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return switchViewToCreation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchViewToCreation != null) {
      return switchViewToCreation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return switchViewToCreation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchViewToCreation != null) {
      return switchViewToCreation(this);
    }
    return orElse();
  }
}

abstract class _SwitchToCreation implements CreatelistEvent {
  const factory _SwitchToCreation() = _$_SwitchToCreation;
}

abstract class _$SwitchToReorderCopyWith<$Res> {
  factory _$SwitchToReorderCopyWith(
          _SwitchToReorder value, $Res Function(_SwitchToReorder) then) =
      __$SwitchToReorderCopyWithImpl<$Res>;
}

class __$SwitchToReorderCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$SwitchToReorderCopyWith<$Res> {
  __$SwitchToReorderCopyWithImpl(
      _SwitchToReorder _value, $Res Function(_SwitchToReorder) _then)
      : super(_value, (v) => _then(v as _SwitchToReorder));

  @override
  _SwitchToReorder get _value => super._value as _SwitchToReorder;
}

class _$_SwitchToReorder implements _SwitchToReorder {
  const _$_SwitchToReorder();

  @override
  String toString() {
    return 'CreatelistEvent.switchViewToReorder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SwitchToReorder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return switchViewToReorder();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchViewToReorder != null) {
      return switchViewToReorder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return switchViewToReorder(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchViewToReorder != null) {
      return switchViewToReorder(this);
    }
    return orElse();
  }
}

abstract class _SwitchToReorder implements CreatelistEvent {
  const factory _SwitchToReorder() = _$_SwitchToReorder;
}

abstract class _$AddListPositionAfterCopyWith<$Res> {
  factory _$AddListPositionAfterCopyWith(_AddListPositionAfter value,
          $Res Function(_AddListPositionAfter) then) =
      __$AddListPositionAfterCopyWithImpl<$Res>;
  $Res call({int index});
}

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
    Object index = freezed,
  }) {
    return _then(_AddListPositionAfter(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_AddListPositionAfter implements _AddListPositionAfter {
  const _$_AddListPositionAfter({@required this.index}) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'CreatelistEvent.addListPositionAfter(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddListPositionAfter &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$AddListPositionAfterCopyWith<_AddListPositionAfter> get copyWith =>
      __$AddListPositionAfterCopyWithImpl<_AddListPositionAfter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return addListPositionAfter(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addListPositionAfter != null) {
      return addListPositionAfter(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return addListPositionAfter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addListPositionAfter != null) {
      return addListPositionAfter(this);
    }
    return orElse();
  }
}

abstract class _AddListPositionAfter implements CreatelistEvent {
  const factory _AddListPositionAfter({@required int index}) =
      _$_AddListPositionAfter;

  int get index;
  _$AddListPositionAfterCopyWith<_AddListPositionAfter> get copyWith;
}

abstract class _$RemoveListPositionCopyWith<$Res> {
  factory _$RemoveListPositionCopyWith(
          _RemoveListPosition value, $Res Function(_RemoveListPosition) then) =
      __$RemoveListPositionCopyWithImpl<$Res>;
  $Res call({int index});
}

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
    Object index = freezed,
  }) {
    return _then(_RemoveListPosition(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_RemoveListPosition implements _RemoveListPosition {
  const _$_RemoveListPosition({@required this.index}) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'CreatelistEvent.removeListPosition(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveListPosition &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$RemoveListPositionCopyWith<_RemoveListPosition> get copyWith =>
      __$RemoveListPositionCopyWithImpl<_RemoveListPosition>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return removeListPosition(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeListPosition != null) {
      return removeListPosition(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return removeListPosition(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeListPosition != null) {
      return removeListPosition(this);
    }
    return orElse();
  }
}

abstract class _RemoveListPosition implements CreatelistEvent {
  const factory _RemoveListPosition({@required int index}) =
      _$_RemoveListPosition;

  int get index;
  _$RemoveListPositionCopyWith<_RemoveListPosition> get copyWith;
}

abstract class _$ChangeItemOrderCopyWith<$Res> {
  factory _$ChangeItemOrderCopyWith(
          _ChangeItemOrder value, $Res Function(_ChangeItemOrder) then) =
      __$ChangeItemOrderCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

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
    Object oldIndex = freezed,
    Object newIndex = freezed,
  }) {
    return _then(_ChangeItemOrder(
      oldIndex: oldIndex == freezed ? _value.oldIndex : oldIndex as int,
      newIndex: newIndex == freezed ? _value.newIndex : newIndex as int,
    ));
  }
}

class _$_ChangeItemOrder implements _ChangeItemOrder {
  const _$_ChangeItemOrder({@required this.oldIndex, @required this.newIndex})
      : assert(oldIndex != null),
        assert(newIndex != null);

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'CreatelistEvent.changeListItemOrder(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeItemOrder &&
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
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @override
  _$ChangeItemOrderCopyWith<_ChangeItemOrder> get copyWith =>
      __$ChangeItemOrderCopyWithImpl<_ChangeItemOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return changeListItemOrder(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeListItemOrder != null) {
      return changeListItemOrder(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return changeListItemOrder(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeListItemOrder != null) {
      return changeListItemOrder(this);
    }
    return orElse();
  }
}

abstract class _ChangeItemOrder implements CreatelistEvent {
  const factory _ChangeItemOrder(
      {@required int oldIndex, @required int newIndex}) = _$_ChangeItemOrder;

  int get oldIndex;
  int get newIndex;
  _$ChangeItemOrderCopyWith<_ChangeItemOrder> get copyWith;
}

abstract class _$EditActiveListCopyWith<$Res> {
  factory _$EditActiveListCopyWith(
          _EditActiveList value, $Res Function(_EditActiveList) then) =
      __$EditActiveListCopyWithImpl<$Res>;
  $Res call({ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

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
    Object list = freezed,
  }) {
    return _then(_EditActiveList(
      list: list == freezed ? _value.list : list as ActiveList,
    ));
  }

  @override
  $ActiveListCopyWith<$Res> get list {
    if (_value.list == null) {
      return null;
    }
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

class _$_EditActiveList implements _EditActiveList {
  const _$_EditActiveList({@required this.list}) : assert(list != null);

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

  @override
  _$EditActiveListCopyWith<_EditActiveList> get copyWith =>
      __$EditActiveListCopyWithImpl<_EditActiveList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return editActiveList(list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editActiveList != null) {
      return editActiveList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return editActiveList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editActiveList != null) {
      return editActiveList(this);
    }
    return orElse();
  }
}

abstract class _EditActiveList implements CreatelistEvent {
  const factory _EditActiveList({@required ActiveList list}) =
      _$_EditActiveList;

  ActiveList get list;
  _$EditActiveListCopyWith<_EditActiveList> get copyWith;
}

abstract class _$EditTemplateCopyWith<$Res> {
  factory _$EditTemplateCopyWith(
          _EditTemplate value, $Res Function(_EditTemplate) then) =
      __$EditTemplateCopyWithImpl<$Res>;
  $Res call({ListTemplate template});

  $ListTemplateCopyWith<$Res> get template;
}

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
    Object template = freezed,
  }) {
    return _then(_EditTemplate(
      template:
          template == freezed ? _value.template : template as ListTemplate,
    ));
  }

  @override
  $ListTemplateCopyWith<$Res> get template {
    if (_value.template == null) {
      return null;
    }
    return $ListTemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

class _$_EditTemplate implements _EditTemplate {
  const _$_EditTemplate({@required this.template}) : assert(template != null);

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

  @override
  _$EditTemplateCopyWith<_EditTemplate> get copyWith =>
      __$EditTemplateCopyWithImpl<_EditTemplate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return editTemplate(template);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editTemplate != null) {
      return editTemplate(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return editTemplate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editTemplate != null) {
      return editTemplate(this);
    }
    return orElse();
  }
}

abstract class _EditTemplate implements CreatelistEvent {
  const factory _EditTemplate({@required ListTemplate template}) =
      _$_EditTemplate;

  ListTemplate get template;
  _$EditTemplateCopyWith<_EditTemplate> get copyWith;
}

abstract class _$UseTemplateAsListCopyWith<$Res> {
  factory _$UseTemplateAsListCopyWith(
          _UseTemplateAsList value, $Res Function(_UseTemplateAsList) then) =
      __$UseTemplateAsListCopyWithImpl<$Res>;
  $Res call({ListTemplate template});

  $ListTemplateCopyWith<$Res> get template;
}

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
    Object template = freezed,
  }) {
    return _then(_UseTemplateAsList(
      template:
          template == freezed ? _value.template : template as ListTemplate,
    ));
  }

  @override
  $ListTemplateCopyWith<$Res> get template {
    if (_value.template == null) {
      return null;
    }
    return $ListTemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

class _$_UseTemplateAsList implements _UseTemplateAsList {
  const _$_UseTemplateAsList({@required this.template})
      : assert(template != null);

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

  @override
  _$UseTemplateAsListCopyWith<_UseTemplateAsList> get copyWith =>
      __$UseTemplateAsListCopyWithImpl<_UseTemplateAsList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result startTemplateCreation(),
    @required Result changeList(),
    @required Result switchViewToCreation(),
    @required Result switchViewToReorder(),
    @required Result addListPositionAfter(int index),
    @required Result removeListPosition(int index),
    @required Result changeListItemOrder(int oldIndex, int newIndex),
    @required Result editActiveList(ActiveList list),
    @required Result editTemplate(ListTemplate template),
    @required Result useTemplateAsList(ListTemplate template),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return useTemplateAsList(template);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result startTemplateCreation(),
    Result changeList(),
    Result switchViewToCreation(),
    Result switchViewToReorder(),
    Result addListPositionAfter(int index),
    Result removeListPosition(int index),
    Result changeListItemOrder(int oldIndex, int newIndex),
    Result editActiveList(ActiveList list),
    Result editTemplate(ListTemplate template),
    Result useTemplateAsList(ListTemplate template),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (useTemplateAsList != null) {
      return useTemplateAsList(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result startTemplateCreation(_StartTemplateCreation value),
    @required Result changeList(_ChangeList value),
    @required Result switchViewToCreation(_SwitchToCreation value),
    @required Result switchViewToReorder(_SwitchToReorder value),
    @required Result addListPositionAfter(_AddListPositionAfter value),
    @required Result removeListPosition(_RemoveListPosition value),
    @required Result changeListItemOrder(_ChangeItemOrder value),
    @required Result editActiveList(_EditActiveList value),
    @required Result editTemplate(_EditTemplate value),
    @required Result useTemplateAsList(_UseTemplateAsList value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(startTemplateCreation != null);
    assert(changeList != null);
    assert(switchViewToCreation != null);
    assert(switchViewToReorder != null);
    assert(addListPositionAfter != null);
    assert(removeListPosition != null);
    assert(changeListItemOrder != null);
    assert(editActiveList != null);
    assert(editTemplate != null);
    assert(useTemplateAsList != null);
    return useTemplateAsList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result startTemplateCreation(_StartTemplateCreation value),
    Result changeList(_ChangeList value),
    Result switchViewToCreation(_SwitchToCreation value),
    Result switchViewToReorder(_SwitchToReorder value),
    Result addListPositionAfter(_AddListPositionAfter value),
    Result removeListPosition(_RemoveListPosition value),
    Result changeListItemOrder(_ChangeItemOrder value),
    Result editActiveList(_EditActiveList value),
    Result editTemplate(_EditTemplate value),
    Result useTemplateAsList(_UseTemplateAsList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (useTemplateAsList != null) {
      return useTemplateAsList(this);
    }
    return orElse();
  }
}

abstract class _UseTemplateAsList implements CreatelistEvent {
  const factory _UseTemplateAsList({@required ListTemplate template}) =
      _$_UseTemplateAsList;

  ListTemplate get template;
  _$UseTemplateAsListCopyWith<_UseTemplateAsList> get copyWith;
}

class _$CreatelistStateTearOff {
  const _$CreatelistStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ListChanged listChanged({@required CreateListParameter creationParam}) {
    return _ListChanged(
      creationParam: creationParam,
    );
  }

// ignore: unused_element
  _SwitchedToCreate switchedToCreate(
      {@required CreateListParameter creationParam}) {
    return _SwitchedToCreate(
      creationParam: creationParam,
    );
  }

// ignore: unused_element
  _SwitchedToReorder switchedToReorder(
      {@required CreateListParameter creationParam}) {
    return _SwitchedToReorder(
      creationParam: creationParam,
    );
  }
}

// ignore: unused_element
const $CreatelistState = _$CreatelistStateTearOff();

mixin _$CreatelistState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result listChanged(CreateListParameter creationParam),
    @required Result switchedToCreate(CreateListParameter creationParam),
    @required Result switchedToReorder(CreateListParameter creationParam),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listChanged(CreateListParameter creationParam),
    Result switchedToCreate(CreateListParameter creationParam),
    Result switchedToReorder(CreateListParameter creationParam),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listChanged(_ListChanged value),
    @required Result switchedToCreate(_SwitchedToCreate value),
    @required Result switchedToReorder(_SwitchedToReorder value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listChanged(_ListChanged value),
    Result switchedToCreate(_SwitchedToCreate value),
    Result switchedToReorder(_SwitchedToReorder value),
    @required Result orElse(),
  });
}

abstract class $CreatelistStateCopyWith<$Res> {
  factory $CreatelistStateCopyWith(
          CreatelistState value, $Res Function(CreatelistState) then) =
      _$CreatelistStateCopyWithImpl<$Res>;
}

class _$CreatelistStateCopyWithImpl<$Res>
    implements $CreatelistStateCopyWith<$Res> {
  _$CreatelistStateCopyWithImpl(this._value, this._then);

  final CreatelistState _value;
  // ignore: unused_field
  final $Res Function(CreatelistState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$CreatelistStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result listChanged(CreateListParameter creationParam),
    @required Result switchedToCreate(CreateListParameter creationParam),
    @required Result switchedToReorder(CreateListParameter creationParam),
  }) {
    assert(initial != null);
    assert(listChanged != null);
    assert(switchedToCreate != null);
    assert(switchedToReorder != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listChanged(CreateListParameter creationParam),
    Result switchedToCreate(CreateListParameter creationParam),
    Result switchedToReorder(CreateListParameter creationParam),
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
    @required Result listChanged(_ListChanged value),
    @required Result switchedToCreate(_SwitchedToCreate value),
    @required Result switchedToReorder(_SwitchedToReorder value),
  }) {
    assert(initial != null);
    assert(listChanged != null);
    assert(switchedToCreate != null);
    assert(switchedToReorder != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listChanged(_ListChanged value),
    Result switchedToCreate(_SwitchedToCreate value),
    Result switchedToReorder(_SwitchedToReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreatelistState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ListChangedCopyWith<$Res> {
  factory _$ListChangedCopyWith(
          _ListChanged value, $Res Function(_ListChanged) then) =
      __$ListChangedCopyWithImpl<$Res>;
  $Res call({CreateListParameter creationParam});
}

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
    Object creationParam = freezed,
  }) {
    return _then(_ListChanged(
      creationParam: creationParam == freezed
          ? _value.creationParam
          : creationParam as CreateListParameter,
    ));
  }
}

class _$_ListChanged implements _ListChanged {
  const _$_ListChanged({@required this.creationParam})
      : assert(creationParam != null);

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

  @override
  _$ListChangedCopyWith<_ListChanged> get copyWith =>
      __$ListChangedCopyWithImpl<_ListChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result listChanged(CreateListParameter creationParam),
    @required Result switchedToCreate(CreateListParameter creationParam),
    @required Result switchedToReorder(CreateListParameter creationParam),
  }) {
    assert(initial != null);
    assert(listChanged != null);
    assert(switchedToCreate != null);
    assert(switchedToReorder != null);
    return listChanged(creationParam);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listChanged(CreateListParameter creationParam),
    Result switchedToCreate(CreateListParameter creationParam),
    Result switchedToReorder(CreateListParameter creationParam),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listChanged != null) {
      return listChanged(creationParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listChanged(_ListChanged value),
    @required Result switchedToCreate(_SwitchedToCreate value),
    @required Result switchedToReorder(_SwitchedToReorder value),
  }) {
    assert(initial != null);
    assert(listChanged != null);
    assert(switchedToCreate != null);
    assert(switchedToReorder != null);
    return listChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listChanged(_ListChanged value),
    Result switchedToCreate(_SwitchedToCreate value),
    Result switchedToReorder(_SwitchedToReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listChanged != null) {
      return listChanged(this);
    }
    return orElse();
  }
}

abstract class _ListChanged implements CreatelistState {
  const factory _ListChanged({@required CreateListParameter creationParam}) =
      _$_ListChanged;

  CreateListParameter get creationParam;
  _$ListChangedCopyWith<_ListChanged> get copyWith;
}

abstract class _$SwitchedToCreateCopyWith<$Res> {
  factory _$SwitchedToCreateCopyWith(
          _SwitchedToCreate value, $Res Function(_SwitchedToCreate) then) =
      __$SwitchedToCreateCopyWithImpl<$Res>;
  $Res call({CreateListParameter creationParam});
}

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
    Object creationParam = freezed,
  }) {
    return _then(_SwitchedToCreate(
      creationParam: creationParam == freezed
          ? _value.creationParam
          : creationParam as CreateListParameter,
    ));
  }
}

class _$_SwitchedToCreate implements _SwitchedToCreate {
  const _$_SwitchedToCreate({@required this.creationParam})
      : assert(creationParam != null);

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

  @override
  _$SwitchedToCreateCopyWith<_SwitchedToCreate> get copyWith =>
      __$SwitchedToCreateCopyWithImpl<_SwitchedToCreate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result listChanged(CreateListParameter creationParam),
    @required Result switchedToCreate(CreateListParameter creationParam),
    @required Result switchedToReorder(CreateListParameter creationParam),
  }) {
    assert(initial != null);
    assert(listChanged != null);
    assert(switchedToCreate != null);
    assert(switchedToReorder != null);
    return switchedToCreate(creationParam);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listChanged(CreateListParameter creationParam),
    Result switchedToCreate(CreateListParameter creationParam),
    Result switchedToReorder(CreateListParameter creationParam),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchedToCreate != null) {
      return switchedToCreate(creationParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listChanged(_ListChanged value),
    @required Result switchedToCreate(_SwitchedToCreate value),
    @required Result switchedToReorder(_SwitchedToReorder value),
  }) {
    assert(initial != null);
    assert(listChanged != null);
    assert(switchedToCreate != null);
    assert(switchedToReorder != null);
    return switchedToCreate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listChanged(_ListChanged value),
    Result switchedToCreate(_SwitchedToCreate value),
    Result switchedToReorder(_SwitchedToReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchedToCreate != null) {
      return switchedToCreate(this);
    }
    return orElse();
  }
}

abstract class _SwitchedToCreate implements CreatelistState {
  const factory _SwitchedToCreate(
      {@required CreateListParameter creationParam}) = _$_SwitchedToCreate;

  CreateListParameter get creationParam;
  _$SwitchedToCreateCopyWith<_SwitchedToCreate> get copyWith;
}

abstract class _$SwitchedToReorderCopyWith<$Res> {
  factory _$SwitchedToReorderCopyWith(
          _SwitchedToReorder value, $Res Function(_SwitchedToReorder) then) =
      __$SwitchedToReorderCopyWithImpl<$Res>;
  $Res call({CreateListParameter creationParam});
}

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
    Object creationParam = freezed,
  }) {
    return _then(_SwitchedToReorder(
      creationParam: creationParam == freezed
          ? _value.creationParam
          : creationParam as CreateListParameter,
    ));
  }
}

class _$_SwitchedToReorder implements _SwitchedToReorder {
  const _$_SwitchedToReorder({@required this.creationParam})
      : assert(creationParam != null);

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

  @override
  _$SwitchedToReorderCopyWith<_SwitchedToReorder> get copyWith =>
      __$SwitchedToReorderCopyWithImpl<_SwitchedToReorder>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result listChanged(CreateListParameter creationParam),
    @required Result switchedToCreate(CreateListParameter creationParam),
    @required Result switchedToReorder(CreateListParameter creationParam),
  }) {
    assert(initial != null);
    assert(listChanged != null);
    assert(switchedToCreate != null);
    assert(switchedToReorder != null);
    return switchedToReorder(creationParam);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listChanged(CreateListParameter creationParam),
    Result switchedToCreate(CreateListParameter creationParam),
    Result switchedToReorder(CreateListParameter creationParam),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchedToReorder != null) {
      return switchedToReorder(creationParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listChanged(_ListChanged value),
    @required Result switchedToCreate(_SwitchedToCreate value),
    @required Result switchedToReorder(_SwitchedToReorder value),
  }) {
    assert(initial != null);
    assert(listChanged != null);
    assert(switchedToCreate != null);
    assert(switchedToReorder != null);
    return switchedToReorder(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listChanged(_ListChanged value),
    Result switchedToCreate(_SwitchedToCreate value),
    Result switchedToReorder(_SwitchedToReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchedToReorder != null) {
      return switchedToReorder(this);
    }
    return orElse();
  }
}

abstract class _SwitchedToReorder implements CreatelistState {
  const factory _SwitchedToReorder(
      {@required CreateListParameter creationParam}) = _$_SwitchedToReorder;

  CreateListParameter get creationParam;
  _$SwitchedToReorderCopyWith<_SwitchedToReorder> get copyWith;
}
