import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';


part 'list_template.freezed.dart';

@freezed
abstract class ListTemplate with _$ListTemplate{
  const factory ListTemplate(
    {
      @required String id, 
      @required String name,
      @required ListType type,
    }
    ) = _ListTemplate;
} 

@freezed
abstract class ListTemplatePosition with _$ListTemplatePosition{
  const factory ListTemplatePosition(
    {
      @required String name,
      @required int position,
    }
  ) = _ListTemplatePosition;
}