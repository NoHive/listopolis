part of 'template_bloc.dart';

@freezed
abstract class TemplateEvent with _$TemplateEvent {
  const factory TemplateEvent.load() = _LoadTemplates;
  const factory TemplateEvent.insertNewTemplate({@required CreateListParameter listParameter}) = _InsertNewTemplate;
  const factory TemplateEvent.deleteTemplatePosition({@required ListTemplate list, @required ListTemplatePosition position }) = _DeleteTemplatePosition;
  const factory TemplateEvent.deleteTemplate({@required ListTemplate list}) = _DeleteTemplate;
  const factory TemplateEvent.replaceTemplate({@required CreateListParameter listParameter, @required ListTemplate list}) = _ReplaceTemplate;
}