import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';

part 'list.freezed.dart';

@freezed
abstract class ActiveList with _$ActiveList{
  const factory ActiveList(
    {
      @required String id, 
      @required String name,
      @required ListType type,
      @required int position,
      @required bool done
    }
  ) = _ActiveList;
}

@freezed
abstract class ActiveListPosition with _$ActiveListPosition{
  const factory ActiveListPosition(
     {
      @required String name,
      @required int position,
      @required bool done
    }
  ) = _ActiveListPosition;
}