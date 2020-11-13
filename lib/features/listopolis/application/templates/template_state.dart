part of 'template_bloc.dart';

@freezed
abstract class TemplateState with _$TemplateState {
    const factory TemplateState.initial() = _Initial;
  const factory TemplateState.loading() = _Loading;
  const factory TemplateState.loaded({@required List<ListTemplate> userTemplates}) = _Loaded;
  const factory TemplateState.templateOrderChanged({@required List<ListTemplate> userTemplates}) = _TemplateOrderChanged;
  const factory TemplateState.error({@required Failure failure}) = _Error;
}
