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
  ActiveList? createdList;
  int? lastActiveListIndex;
  CreateListParameter? listCreation;
  ActiveList? editList;
  ListTemplate? editTemplate;
  // bool isListEditing=false;
  // bool isTemplateEditing=false;
  // bool isTemplateCreation=false;
  // bool isListCreation=false;
  // bool isTemplateToList=false;
  ListEditMode? editMode;
  bool isListCreation() => ListEditMode.listCreation() == editMode;
  bool isListEdit() => ListEditMode.listEditing() == editMode;
  bool isTemplateEdit() => ListEditMode.templateEditing() == editMode;
  bool isTemplateCreation() => ListEditMode.templateCreation() == editMode;
  bool isListTransfer() => ListEditMode.transferTemplateToList() == editMode;

  CreatelistBloc({required this.repository}) : super(_Initial());

  @override
  Stream<CreatelistState> mapEventToState(
    CreatelistEvent event,
  ) async* {
    yield* event.map(
    started : (e) async*{
       createdList = null;
       Either<Failure, List<ActiveList>> lists = await repository.getActiveLists();
       lists.fold(
         (failure) {}, 
         (activeLists) {
            activeLists.sort((a, b) => a.position.compareTo(b.position));
            ActiveList lastList = activeLists.last;
            lastActiveListIndex = lastList.position;
         }
       );
       
        yield _Initial();
    },
    startListCreation: (e) async*{
      
      editMode = ListEditMode.listCreation();
      CreateListParameter alistCreation = CreateListParameter(
                                    listName:  ""
                                  , type: ListType.remember()
                                  , positioning: PositionType.start
      );
      
        alistCreation.listitems.add(CreateListItemParameter(name: "", position: 1));
        listCreation = alistCreation;
        yield _ListChanged(creationParam:  alistCreation);
    }, 
     startTemplateCreation: (e) async*{
      editMode = ListEditMode.templateCreation();
      
      CreateListParameter alistCreation = CreateListParameter(
                                    listName:  ""
                                  , type: ListType.remember()
                                  , positioning: PositionType.start
      );
      alistCreation.listitems.add(CreateListItemParameter(name: "", position: 1));
      listCreation = alistCreation;
      yield _ListChanged(creationParam:  alistCreation);
    }, 
    changeList: (e) async*{
      yield _Initial();
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;
        yield _ListChanged(creationParam:  alistCreation);
    },
    switchViewToCreation:  (e) async*{
      yield _Initial();
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;
        
        yield _SwitchedToCreate(creationParam:  alistCreation);
    },
    switchViewToReorder:  (e) async*{
      yield _Initial();
         CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;
        yield _SwitchedToReorder(creationParam:  alistCreation);
    },
    addListPositionAfter: (e) async*{
      yield _Initial();
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;

        alistCreation.addListPositionAfterIndex(e.index);
        yield _ListChanged(creationParam:  alistCreation);
    },
    changeListItemOrder:  (e) async*{
      yield _Initial();
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;

        alistCreation.reorderListPosition(e.oldIndex, e.newIndex);
        yield _SwitchedToReorder(creationParam:  alistCreation);
    },
    removeListPosition:  (e) async*{
      yield _Initial();
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;
        if(alistCreation.listitems.length > 1)
          alistCreation.reoveListPositionAtIndex(e.index);
        yield _SwitchedToCreate(creationParam:  alistCreation);
    },
    editActiveList: (e) async*{
      yield _Initial();
       ListEditMode aEditMode = ListEditMode.listEditing();
        ActiveList aEditList = e.list;
        editMode = aEditMode;

        CreateListParameter alistCreation = CreateListParameter.asEditFromList(aEditList);
        listCreation = alistCreation;
        yield _SwitchedToCreate(creationParam:  alistCreation);
    },
    editTemplate:  (e) async*{
      yield _Initial();
        ListEditMode aEditMode = ListEditMode.templateEditing();
        editMode = aEditMode;
        ListTemplate aEditTemplate = e.template;
        CreateListParameter aListCreation = CreateListParameter.asEditFromTemplate(aEditTemplate);
        listCreation = aListCreation;
        yield _SwitchedToCreate(creationParam:  aListCreation);
    },
    useTemplateAsList:  (e) async*{
      yield _Initial();
        ListEditMode aEditMode = ListEditMode.transferTemplateToList();
        editMode = aEditMode;
        ListTemplate aEditTemplate = e.template;
        
        CreateListParameter aListCreation = CreateListParameter.asEditFromTemplate(aEditTemplate);
        listCreation = aListCreation;
        yield _SwitchedToCreate(creationParam:  aListCreation);
    },
    );
    
    // TODO: implement mapEventToState
  }
}
