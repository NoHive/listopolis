part of 'template_bloc.dart';

@freezed
class TemplateState with _$TemplateState {
    const factory TemplateState.initial() = _Initial;
  const factory TemplateState.loading() = _Loading;
  const factory TemplateState.loaded({@Default([]) List<ListTemplate> userTemplates}) = _Loaded;
  const factory TemplateState.templateOrderChanged({@Default([]) List<ListTemplate> userTemplates}) = _TemplateOrderChanged;
  const factory TemplateState.error({@Default(Failure.serviceAccessFailed()) Failure failure}) = _Error;
}
