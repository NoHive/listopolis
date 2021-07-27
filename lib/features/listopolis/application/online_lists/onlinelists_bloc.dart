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
  
  
  OnlinelistsBloc(this.onlineRepository) : super(_Initial());
  StreamSubscription<Either<Failure, List<ActiveList>>>? streamSubscription;

  @override
  Stream<OnlinelistsState> mapEventToState(
    OnlinelistsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      started: (e) async* { 
          yield Loading();
      }, 
      listViewRequested: (e) async* { 
        yield Loading();
        
        await streamSubscription?.cancel();
        
        streamSubscription = onlineRepository.getActiveLists().listen(
            (listsOrFailure) { 
                  add(ListViewReceived(serverListContend: listsOrFailure));
          }
        );
        
      },
      listViewReceived: (e) async* { 
            yield Loading();
            yield e.serverListContend.fold(
                      (failure) => Error(failure: failure), 
                      (activeLists) => Loaded(onlineLists: activeLists ) 
            );
      },
      insertNewList: (e) async* { 
         yield Loading();
         Either<Failure, List<ActiveList>> currentLists = await onlineRepository.getCurrentActiveLists();
         add(OnlinelistsEvent.insertNewListIntoExisting(serverListContend: currentLists, aNewList: e.aNewList));
        // await streamSubscription?.cancel();
        // streamSubscription = onlineRepository.getActiveLists().listen(
        //     (listsOrFailure) { 
        //           add(OnlinelistsEvent.insertNewListIntoExisting(serverListContend: listsOrFailure, aNewList: e.aNewList));
        //   }
        // );
      },
      insertNewListIntoExisting: (e) async* { 
        yield Loading();
        yield e.serverListContend.fold(
          (aFailure) => OnlinelistsState.error(failure: aFailure), 
          (lists) {
            onlineRepository.insertActiveList(lists, e.aNewList);
            add(OnlinelistsEvent.listViewRequested());
            return OnlinelistsState.loading();
          });
      },
      deleteListItem: (e) async* {
          yield Loading();
          Either<Failure, List<ActiveList>> currentLists = await onlineRepository.getCurrentActiveLists();
          add(OnlinelistsEvent.deleteListItemFromExisting(serverListContend: currentLists, list: e.list, listItem: e.listItem));
        // await streamSubscription?.cancel();
        // streamSubscription = onlineRepository.getActiveLists().listen(
        //     (listsOrFailure) { 
        //           add(OnlinelistsEvent.deleteListItemFromExisting(serverListContend: listsOrFailure, list: e.list, listItem: e.listItem));
        //   }
        // );
      },
      deleteListItemFromExisting: (e) async* {
        yield Loading();
        yield e.serverListContend.fold(
          (aFailure) => OnlinelistsState.error(failure: aFailure), 
          (lists) {
            onlineRepository.deleteActiveListPosition(lists, e.list, e.listItem);
            add(OnlinelistsEvent.listViewRequested());
            return OnlinelistsState.loading();
          });
      },
      deleteList: (e) async* {
        yield Loading();
        Either<Failure, List<ActiveList>> currentLists = await onlineRepository.getCurrentActiveLists();
         add(OnlinelistsEvent.deleteListFromExisting(serverListContend: currentLists, list: e.list));
      },
      deleteListFromExisting: (e) async* {
        yield Loading();
        yield e.serverListContend.fold(
          (aFailure) => OnlinelistsState.error(failure: aFailure), 
          (lists) {
            onlineRepository.deleteActiveList(lists, e.list);
            add(OnlinelistsEvent.listViewRequested());
            return OnlinelistsState.loading();
          });
      },
      overwriteList: (e) async* {
        yield Loading();
        Either<Failure, List<ActiveList>> currentLists = await onlineRepository.getCurrentActiveLists();
        print("currentLists read");
        if(currentLists.isLeft()){
           currentLists.leftMap((fail) async* {yield OnlinelistsState.error(failure: fail);});
        }else{
          List<ActiveList> listsOnServer = currentLists.getOrElse(() { throw Exception();});
          Either<Failure, Unit> replaceResult = await onlineRepository.replaceActiveList(listsOnServer,  e.list, e.changedList);
              yield replaceResult.fold(
                (fail) => OnlinelistsState.error(failure: fail), 
                (r) => OnlinelistsState.loading()
              );
          //  currentLists.map((lists) async* {
          //     Either<Failure, Unit> replaceResult = await onlineRepository.replaceActiveList(lists,  e.list, e.changedList);
          //     yield replaceResult.fold(
          //       (fail) => OnlinelistsState.error(failure: fail), 
          //       (r) => OnlinelistsState.loading()
          //     );
              add(OnlinelistsEvent.listViewRequested());
              
          
        }
      },
      );
  }
  @override
  Future<void> close() async {
    // TODO: implement close
    await streamSubscription?.cancel();
    return super.close();

  }
}

