import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/application/list_creation/list_creation_mode.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
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
  ActiveList editList;
  ListTemplate editTemplate;
  // bool isListEditing=false;
  // bool isTemplateEditing=false;
  // bool isTemplateCreation=false;
  // bool isListCreation=false;
  // bool isTemplateToList=false;
  ListEditMode editMode;
  bool isListCreation() => ListEditMode.listCreation() == editMode;
  bool isListEdit() => ListEditMode.listEditing() == editMode;
  bool isTemplateEdit() => ListEditMode.templateEditing() == editMode;
  bool isTemplateCreation() => ListEditMode.templateCreation() == editMode;
  bool isListTransfer() => ListEditMode.transferTemplateToList() == editMode;

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
      
      editMode = ListEditMode.listCreation();
       listCreation = CreateListParameter(
                                    listName:  ""
                                  , type: ListType.remember()
                                  , positioning: PositionType.start
      );
      listCreation.listitems.add(CreateListItemParameter(name: "", position: 1));
      yield _ListChanged(creationParam:  listCreation);
    }, 
     startTemplateCreation: (e) async*{
      editMode = ListEditMode.templateCreation();
      
      listCreation = CreateListParameter(
                                    listName:  ""
                                  , type: ListType.remember()
                                  , positioning: PositionType.start
      );
      listCreation.listitems.add(CreateListItemParameter(name: "", position: 1));
      yield _ListChanged(creationParam:  listCreation);
    }, 
    changeList: (e) async*{
      yield _Initial();
        //listCreation = CreateListParameter.asCopy(listCreation);
        yield _ListChanged(creationParam:  listCreation);
    },
    switchViewToCreation:  (e) async*{
      yield _Initial();
        //listCreation = CreateListParameter.asCopy(listCreation);
        yield _SwitchedToCreate(creationParam:  listCreation);
    },
    switchViewToReorder:  (e) async*{
      yield _Initial();
        //listCreation = CreateListParameter.asCopy(listCreation);
        yield _SwitchedToReorder(creationParam:  listCreation);
    },
    addListPositionAfter: (e) async*{
      yield _Initial();
        //listCreation = CreateListParameter.asCopy(listCreation);
        listCreation.addListPositionAfterIndex(e.index);
        yield _ListChanged(creationParam:  listCreation);
    },
    changeListItemOrder:  (e) async*{
      yield _Initial();
        //listCreation = CreateListParameter.asCopy(listCreation);
        listCreation.reorderListPosition(e.oldIndex, e.newIndex);
        yield _SwitchedToReorder(creationParam:  listCreation);
    },
    removeListPosition:  (e) async*{
      yield _Initial();
        //listCreation = CreateListParameter.asCopy(listCreation);
        if(listCreation.listitems.length > 1)
          listCreation.reoveListPositionAtIndex(e.index);
        yield _SwitchedToCreate(creationParam:  listCreation);
    },
    editActiveList: (e) async*{
      yield _Initial();
        editMode = ListEditMode.listEditing();
        editList = e.list;
        

        listCreation = CreateListParameter.asEditFromList(editList);
        
        yield _SwitchedToCreate(creationParam:  listCreation);
    },
    editTemplate:  (e) async*{
      yield _Initial();
        editMode = ListEditMode.templateEditing();
        editTemplate = e.template;
        listCreation = CreateListParameter.asEditFromTemplate(editTemplate);
        
        yield _SwitchedToCreate(creationParam:  listCreation);
    },
    useTemplateAsList:  (e) async*{
      yield _Initial();
        editMode = ListEditMode.transferTemplateToList();
        editTemplate = e.template;
        
        listCreation = CreateListParameter.asEditFromTemplate(editTemplate);
        
        yield _SwitchedToCreate(creationParam:  listCreation);
    },
    );
    
    // TODO: implement mapEventToState
  }
}
