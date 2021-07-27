import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_creation_mode.freezed.dart';

@freezed
abstract class ListEditMode with _$ListEditMode{
  const factory ListEditMode.listCreation() = _EditListCreation;
  const factory ListEditMode.listEditing() = _EditListEditing;
  const factory ListEditMode.onlinelistEditing() = _OnlineListEditing;
  const factory ListEditMode.templateCreation() = _EditTemplateCreation;
  const factory ListEditMode.templateEditing() = _EditTemplateEditing;
  const factory ListEditMode.transferTemplateToList() = _EditTransferTemplateToList;


}