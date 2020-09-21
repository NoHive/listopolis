import 'package:flutter/material.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';

enum PositionType{start, end}

String buildPositionTypeLocalString(PositionType pType, String locale){
  String lString;
  if(pType == PositionType.end)
    lString = "Anfang";
  else
    lString = "Ende";

    return lString;
}

class CreateListParameter{
  final String listName;
  final ListType type;
  final PositionType positioning;

  CreateListParameter({@required this.listName, @required this.type, @required this.positioning});

}
class CreateListItemParameter{
  final String name;
  final PositionType positioning;

  CreateListItemParameter({@required this.name, @required this.positioning});

}