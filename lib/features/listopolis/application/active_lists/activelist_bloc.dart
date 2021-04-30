import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:clipboard/clipboard.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'activelist_event.dart';
part 'activelist_state.dart';
part 'activelist_bloc.freezed.dart';

@injectable
class ActivelistBloc extends Bloc<ActivelistEvent, ActivelistState> {
  final IRepository repository;
  ActivelistBloc({required this.repository} ) : super(_Initial());

  @override
  Stream<ActivelistState> mapEventToState(
    ActivelistEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
    load: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    deleteActiveListPosition: (e) async*{
     // yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.deleteActiveListPosition(e.list, e.position);
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    insertNewList: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.insertActiveList(e.listParameter);
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    deleteActiveList: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.deleteActiveList(e.list);
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    replaceActiveList: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.replaceActiveList(e.list, e.listParameter);
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    loadDataFromBackup: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.loadUserDataFromBackup();
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    backupData: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.backupUserData();
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    useListAsTemplate: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.createTemlateFromList(e.list);
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    changeListPosition: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.changeListPosition(e.list, e.oldIndex, e.newIndex);
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.listOrderChanged(userLists: r));
    },
    loadForReorder: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.listOrderChanged(userLists: r));
    },
    copyListToClipBoard: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      ActiveList listToCopy = e.list;
      String encodedString = json.encode(listToCopy.toJson());
      await FlutterClipboard.copy(encodedString);
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    createListFromClipBoard:  (e) async*{
      yield ActivelistState.loading();
      String encodedString = await FlutterClipboard.paste();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.createListFromExternalJson(encodedString);

      await FlutterClipboard.copy(" ");

      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    },
    );
    
  }
}
