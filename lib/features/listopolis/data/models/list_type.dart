import 'package:freezed_annotation/freezed_annotation.dart';


part 'list_type.freezed.dart';

@freezed
abstract class ListType with _$ListType{
  const factory ListType.remember() = Remember;
  const factory ListType.todo() = ToDoList;

  static String buildLocalName(ListType type, String locale){
    return type is Remember ? "Merkliste" : "To-Do-Liste";
  }

}



ListType listTypeFromJson(String str){
    if("T".compareTo(str) == 0)
      return ListType.todo();
    else
      return ListType.remember();

}
String listTypeToJson(ListType type){  
    return type.when(remember: () => "R", todo: ()=> "T");
}