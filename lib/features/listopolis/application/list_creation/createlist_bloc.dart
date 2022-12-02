import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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

@injectable
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

  CreatelistBloc({required this.repository}) : super(_Initial()){
    on<_Started>((event, emit) => _emitWhenStarted(event, emit));
    on<_StartListCreation>((event, emit) => _emitListCreation(event, emit));
    on<_ChangeList>((event, emit) => _emitChangeList(event, emit));
    on<_StartTemplateCreation>((event, emit) => _emitStartTemplateCreation(event, emit));
    on<_SwitchToCreation>((event, emit) => _emitSwitchViewToCreation(event, emit));
    on<_SwitchToReorder>((event, emit) => _emitSwitchViewToReorder(event, emit));
    on<_AddListPositionAfter>((event, emit) => _emitAddListPositionAfter(event, emit));
    on<_RemoveListPosition>((event, emit) => _emitRemoveListPosition(event, emit));
    on<_ChangeItemOrder>((event, emit) => _emitchangeItemOrder(event, emit));
    on<_EditActiveList>((event, emit) => _emitEditActiveList(event, emit));
    on<_EditOnlineList>((event, emit) => _emitEditOnlineList(event, emit));
    on<_EditTemplate>((event, emit) => _emitEditTemplate(event, emit));
    on<_UseTemplateAsList>((event, emit) => _emitUseTemplateAsList(event, emit));
  }

  _emitWhenStarted(_Started e, Emitter<CreatelistState> emit) async{
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
       
        emit(_Initial());
  }
  _emitListCreation(_StartListCreation event, Emitter<CreatelistState> emit) async {
     editMode = ListEditMode.listCreation();
      CreateListParameter alistCreation = CreateListParameter(
                                    listName:  ""
                                  , type: ListType.remember()
                                  , positioning: PositionType.start
                                  , repeat: false
      );
      
        alistCreation.listitems.add(CreateListItemParameter(name: "", position: 1));
        listCreation = alistCreation;
        emit( _ListChanged(creationParam:  alistCreation));
  }

   _emitChangeList(_ChangeList e, Emitter<CreatelistState> emit) async {
      emit( _Initial());
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;
        emit( _ListChanged(creationParam:  alistCreation));
   }

  _emitStartTemplateCreation(_StartTemplateCreation e, Emitter<CreatelistState> emit) async {
      editMode = ListEditMode.templateCreation();
      
      CreateListParameter alistCreation = CreateListParameter(
                                    listName:  ""
                                  , type: ListType.remember()
                                  , positioning: PositionType.start
                                  , repeat: false
      );
      alistCreation.listitems.add(CreateListItemParameter(name: "", position: 1));
      listCreation = alistCreation;
      emit(_ListChanged(creationParam:  alistCreation));
  }

   _emitSwitchViewToCreation(_SwitchToCreation e, Emitter<CreatelistState> emit) async{
      emit( _Initial());
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;
        
        emit(_SwitchedToCreate(creationParam:  alistCreation));
  }

   _emitSwitchViewToReorder(_SwitchToReorder e, Emitter<CreatelistState> emit) async {
     emit( _Initial());
         CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;
        emit( _SwitchedToReorder(creationParam:  alistCreation));
  }

  _emitAddListPositionAfter(_AddListPositionAfter e, Emitter<CreatelistState> emit) async{
     emit( _Initial());
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;

        alistCreation.addListPositionAfterIndex(e.index);
        emit( _ListChanged(creationParam:  alistCreation));
  }

   _emitRemoveListPosition(_RemoveListPosition e, Emitter<CreatelistState> emit) async {
     emit( _Initial());
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;
        if(alistCreation.listitems.length > 1)
          alistCreation.reoveListPositionAtIndex(e.index);
        emit( _SwitchedToCreate(creationParam:  alistCreation));
  }

   _emitchangeItemOrder(_ChangeItemOrder e, Emitter<CreatelistState> emit) async {
     emit(_Initial());
        CreateListParameter alistCreation = CreateListParameter.asCopy(e.listParam);
        listCreation = alistCreation;

        alistCreation.reorderListPosition(e.oldIndex, e.newIndex);
        emit( _SwitchedToReorder(creationParam:  alistCreation));
  }

   _emitEditActiveList(_EditActiveList e, Emitter<CreatelistState> emit) async{
     emit( _Initial());
       ListEditMode aEditMode = ListEditMode.listEditing();
        ActiveList aEditList = e.list;
        editMode = aEditMode;
        editList = aEditList;
        CreateListParameter alistCreation = CreateListParameter.asEditFromList(aEditList);
        listCreation = alistCreation;
        emit(_SwitchedToCreate(creationParam:  alistCreation));
  }

   _emitEditOnlineList(_EditOnlineList e, Emitter<CreatelistState> emit) async{
    emit(_Initial());
       ListEditMode aEditMode = ListEditMode.onlinelistEditing();
        ActiveList aEditList = e.list;
        editMode = aEditMode;
        editList = aEditList;
        CreateListParameter alistCreation = CreateListParameter.asEditFromList(aEditList);
        listCreation = alistCreation;
        emit( _SwitchedToCreate(creationParam:  alistCreation));
  }

   _emitEditTemplate(_EditTemplate e, Emitter<CreatelistState> emit) async{
    emit(_Initial());
        ListEditMode aEditMode = ListEditMode.templateEditing();
        editMode = aEditMode;
        ListTemplate aEditTemplate = e.template;
        editTemplate = aEditTemplate;
        CreateListParameter aListCreation = CreateListParameter.asEditFromTemplate(aEditTemplate);
        listCreation = aListCreation;
        emit( _SwitchedToCreate(creationParam:  aListCreation));
  }

   _emitUseTemplateAsList(_UseTemplateAsList e, Emitter<CreatelistState> emit) async{
     emit( _Initial());
        ListEditMode aEditMode = ListEditMode.transferTemplateToList();
        editMode = aEditMode;
        ListTemplate aEditTemplate = e.template;
        
        CreateListParameter aListCreation = CreateListParameter.asEditFromTemplate(aEditTemplate);
        listCreation = aListCreation;
        emit( _SwitchedToCreate(creationParam:  aListCreation));
  }

  
}


