import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:clipboard/clipboard.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/core/repetition_utils.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/repetition_config.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'activelist_event.dart';
part 'activelist_state.dart';
part 'activelist_bloc.freezed.dart';

@injectable
class ActivelistBloc extends Bloc<ActivelistEvent, ActivelistState> {
  final IRepository repository;
  ActivelistBloc({required this.repository} ) : super(_Initial()){
    on<_LoadLists>((event, emit) => _emit_LoadList(event, emit));
    on<_LoadAll>((event, emit) => _emit_LoadAll(event, emit));
    on<_LoadForReorder>((event, emit) => _emit_LoadForReorder(event, emit));
    on<_InsertNewList>((event, emit) => _emit_InsertNewList(event, emit));
    on<_DeleteActiveListPosition>((event, emit) => _emit_DeleteActiveListPosition(event, emit));
    on<_DeleteActiveList>((event, emit) => _emit_DeleteActiveList(event, emit));
    on<_ReplaceActiveList>((event, emit) => _emit_ReplaceActiveList(event, emit));
    on<_BackupData>((event, emit) => _emit_BackupData(event, emit));
    on<_LoadDataFromBackup>((event, emit) => _emit_LoadDataFromBackup(event, emit));
    on<_UseListAsTemplate>((event, emit) => _emit_UseListAsTemplate(event, emit));
    on<_ChangeListPosition>((event, emit) => _emit_ChangeListPosition(event, emit));
    on<_CopyListToClipBoard>((event, emit) => _emit_CopyListToClipBoard(event, emit));
    on<_CreateListFromClipBoard>((event, emit) => _emit_CreateListFromClipBoard(event, emit));
    on<_ReminderDisplayed>((event, emit) => _emit_ReminderDisplayed(event, emit));
  }
  _emit_LoadList(_LoadLists e, Emitter<ActivelistState> emit) async{
     emit(ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _emit_LoadForReorder(_LoadForReorder e, Emitter<ActivelistState> emit) async{
       emit(ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      emit(activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.listOrderChanged(userLists: r)));
  }
  _emit_InsertNewList(_InsertNewList e, Emitter<ActivelistState> emit) async{
      emit(ActivelistState.loading());
      
      if(e.listParameter.repeat && e.listParameter.repetitionConfig != null){
        
        await RepetitionUtil.createNotificationsFromConfig(e.listParameter.repetitionConfig!, e.listParameter.listName, true);
        
      }
      Either<Failure, List<ActiveList>> activeListsResult = await repository.insertActiveList(e.listParameter);
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _emit_DeleteActiveListPosition(_DeleteActiveListPosition e, Emitter<ActivelistState> emit) async{
     // yield ActivelistState.loading();
      ActiveList list = e.list;
      bool  needNewRepetition = false;
      if(list.repeat){
        if(list.listItems != null && list.listItems.length == 1 && list.repetitionConfig != null){
            await RepetitionUtil.stopNotifications(list.repetitionConfig!);
            needNewRepetition = true;
        }
      }
      Either<Failure, List<ActiveList>> activeListsResult = await repository.deleteActiveListPosition(e.list, e.position);
      
      if(needNewRepetition){
        activeListsResult.fold(
          (l) => ActivelistState.error(failure: l), 
          (r) async { _updateRepetition(r);});
      }

      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _updateRepetition( List<ActiveList> activeLists) async{
      activeLists.forEach((list) async {
        if(list.needReminders){
          await RepetitionUtil.createNotificationsFromConfig(list.repetitionConfig!, list.name, true);
          await repository.upateListAfterRepetitionPlanning(list);
        }
      });
  }

  _emit_DeleteActiveList(_DeleteActiveList e, Emitter<ActivelistState> emit) async{
     emit( ActivelistState.loading());
      if(e.list.repetitionConfig != null)
        await RepetitionUtil.stopNotifications(e.list.repetitionConfig!);

      Either<Failure, List<ActiveList>> activeListsResult = await repository.deleteActiveList(e.list);
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _emit_ReplaceActiveList(_ReplaceActiveList e, Emitter<ActivelistState> emit) async{
     emit( ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.replaceActiveList(e.list, e.listParameter);
      
      emit(activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _emit_BackupData(_BackupData e, Emitter<ActivelistState> emit) async{
     emit( ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.backupUserData();
      
      emit(activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _emit_LoadDataFromBackup(_LoadDataFromBackup e, Emitter<ActivelistState> emit) async{
      emit( ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.loadUserDataFromBackup();
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _emit_UseListAsTemplate(_UseListAsTemplate e, Emitter<ActivelistState> emit) async{
       emit(ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.createTemlateFromList(e.list);
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _emit_ChangeListPosition(_ChangeListPosition e, Emitter<ActivelistState> emit) async{
       emit(ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.changeListPosition(e.list, e.oldIndex, e.newIndex);
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.listOrderChanged(userLists: r)));
  }
  _emit_CopyListToClipBoard(_CopyListToClipBoard e, Emitter<ActivelistState> emit) async{
        emit(ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      ActiveList listToCopy = e.list;
      String encodedString = json.encode(listToCopy.toJson());
      await FlutterClipboard.copy(encodedString);
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  _emit_CreateListFromClipBoard(_CreateListFromClipBoard e, Emitter<ActivelistState> emit) async{
      emit( ActivelistState.loading());
      String encodedString = await FlutterClipboard.paste();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.createListFromExternalJson(encodedString);

      await FlutterClipboard.copy(" ");

      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }
  
  _emit_LoadAll(_LoadAll event, Emitter<ActivelistState> emit) async {
      emit(ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loadedAll(userLists: r)));
  }
  
  _emit_ReminderDisplayed(_ReminderDisplayed event, Emitter<ActivelistState> emit) async{
     emit(ActivelistState.loading());
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      emit( activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r)));
  }

  
}
