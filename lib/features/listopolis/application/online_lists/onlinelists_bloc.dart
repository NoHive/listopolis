import 'dart:async';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'onlinelists_event.dart';
part 'onlinelists_state.dart';
part 'onlinelists_bloc.freezed.dart';

@injectable
class OnlinelistsBloc extends Bloc<OnlinelistsEvent, OnlinelistsState> {
  final IStreamRepository onlineRepository;
  StreamSubscription<Either<Failure, List<ActiveList>>>? streamSubscription;
  
  OnlinelistsBloc(this.onlineRepository) : super(_Initial()){
    on<_Started>((event, emit) => _emit_Started(event, emit));
    on<ListViewRequested>((event, emit) => _emitListViewRequested(event, emit));
    on<ListViewReceived>((event, emit) => _emitListViewReceived(event, emit));
    on<_InsertNewList>((event, emit) => _emit_InsertNewList(event, emit));
    on<_InsertNewListIntoExisting>((event, emit) => _emit_InsertNewListIntoExisting(event, emit));
    on<_DeleteListItem>((event, emit) => _emit_DeleteListItem(event, emit));
    on<_DeleteListItemFromExisting>((event, emit) => _emit_DeleteListItemFromExisting(event, emit));
    on<_DeleteList>((event, emit) => _emit_DeleteList(event, emit));
    on<_OverwriteList>((event, emit) => _emit_OverwriteList(event, emit));
    on<_DeleteListFromExisting>((event, emit) => _emit_DeleteListFromExisting(event, emit));
  }
  _emit_Started(_Started e, Emitter<OnlinelistsState> emit) async{
      emit( Loading());
  }
  _emitListViewRequested(ListViewRequested e, Emitter<OnlinelistsState> emit) async{
       emit( Loading());
        
        await streamSubscription?.cancel();
        
        streamSubscription = onlineRepository.getActiveLists().listen(
            (listsOrFailure) { 
                  add(ListViewReceived(serverListContend: listsOrFailure));
          }
        );
  }
  _emitListViewReceived(ListViewReceived e, Emitter<OnlinelistsState> emit) async{
        emit( Loading());
            e.serverListContend.fold(
                      (failure) => Error(failure: failure), 
                      (activeLists) => Loaded(onlineLists: activeLists ) 
            );
  }
  _emit_InsertNewList(_InsertNewList e, Emitter<OnlinelistsState> emit) async{
        emit(Loading());
         Either<Failure, List<ActiveList>> currentLists = await onlineRepository.getCurrentActiveLists();
         add(OnlinelistsEvent.insertNewListIntoExisting(serverListContend: currentLists, aNewList: e.aNewList));
  }
  _emit_InsertNewListIntoExisting(_InsertNewListIntoExisting e, Emitter<OnlinelistsState> emit) async{
      emit(Loading());
        emit( e.serverListContend.fold(
          (aFailure) => OnlinelistsState.error(failure: aFailure), 
          (lists) {
            onlineRepository.insertActiveList(lists, e.aNewList);
            add(OnlinelistsEvent.listViewRequested());
            return OnlinelistsState.loading();
          }));
  }
  _emit_DeleteListItem(_DeleteListItem e, Emitter<OnlinelistsState> emit) async{
      emit(Loading());
          Either<Failure, List<ActiveList>> currentLists = await onlineRepository.getCurrentActiveLists();
          add(OnlinelistsEvent.deleteListItemFromExisting(serverListContend: currentLists, list: e.list, listItem: e.listItem));
  }
  _emit_DeleteListItemFromExisting(_DeleteListItemFromExisting e, Emitter<OnlinelistsState> emit) async{
        emit(Loading());
        emit( e.serverListContend.fold(
          (aFailure) => OnlinelistsState.error(failure: aFailure), 
          (lists) {
            onlineRepository.deleteActiveListPosition(lists, e.list, e.listItem);
            add(OnlinelistsEvent.listViewRequested());
            return OnlinelistsState.loading();
          }));
  }
  _emit_DeleteList(_DeleteList e, Emitter<OnlinelistsState> emit) async{
     emit(Loading());
        Either<Failure, List<ActiveList>> currentLists = await onlineRepository.getCurrentActiveLists();
         add(OnlinelistsEvent.deleteListFromExisting(serverListContend: currentLists, list: e.list));
  }
  _emit_OverwriteList(_OverwriteList e, Emitter<OnlinelistsState> emit) async{
         emit(Loading());
        Either<Failure, List<ActiveList>> currentLists = await onlineRepository.getCurrentActiveLists();
        print("currentLists read");
        if(currentLists.isLeft()){
           currentLists.leftMap((fail) async* {emit( OnlinelistsState.error(failure: fail));});
        }else{
          List<ActiveList> listsOnServer = currentLists.getOrElse(() { throw Exception();});
          Either<Failure, Unit> replaceResult = await onlineRepository.replaceActiveList(listsOnServer,  e.list, e.changedList);
              emit( replaceResult.fold(
                (fail) => OnlinelistsState.error(failure: fail), 
                (r) => OnlinelistsState.loading()
              ));
              add(OnlinelistsEvent.listViewRequested());
        }
  }
  _emit_DeleteListFromExisting(_DeleteListFromExisting e, Emitter<OnlinelistsState> emit) async{
       emit(Loading());
        emit( e.serverListContend.fold(
          (aFailure) => OnlinelistsState.error(failure: aFailure), 
          (lists) {
            onlineRepository.deleteActiveList(lists, e.list);
            add(OnlinelistsEvent.listViewRequested());
            return OnlinelistsState.loading();
          }));
  }

  @override
  Future<void> close() async {
    // TODO: implement close
    await streamSubscription?.cancel();
    return super.close();

  }
}

