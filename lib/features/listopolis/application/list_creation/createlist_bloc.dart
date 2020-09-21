import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';
import 'package:uuid/uuid.dart';

part 'createlist_event.dart';
part 'createlist_state.dart';
part 'createlist_bloc.freezed.dart';

class CreatelistBloc extends Bloc<CreatelistEvent, CreatelistState> {
  
  final IRepository repository;
  ActiveList createdList;
  int lastActiveListIndex;
  CreateListParameter listCreation;
  
  CreatelistBloc({@required this.repository}) : super(_Initial());

  @override
  Stream<CreatelistState> mapEventToState(
    CreatelistEvent event,
  ) async* {
    yield* event.map(
    started : (e) async*{
       createdList = null;
       Either<Failure, List<ActiveList>> lists = await repository.getActiveLists();
       List<ActiveList> activeLists = lists.getOrElse(() => null);
       activeLists.sort((a, b) => a.position.compareTo(b.position));
       ActiveList lastList = activeLists.last;
       lastActiveListIndex = lastList.position;

        yield _Initial();
    },
    startListCreation: (e) async*{

      CreateListParameter initialValues = new CreateListParameter(
                                    listName:  "neue Liste"
                                  , type: ListType.remember()
                                  , positioning: PositionType.start
      );
      yield _ListCreationValueChanged(creationParam:  initialValues);
    }, 
    createNewListPosition: (e) async*{
        yield _ListItemCreationValueChanged(creationParam: e.listPos);
    },
    createNewList: (e) async*{
      yield _ListCreationValueChanged(creationParam:  e.listInfo);
    },
    
    );
    
    // TODO: implement mapEventToState
  }
}
