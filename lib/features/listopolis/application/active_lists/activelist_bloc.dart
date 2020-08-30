import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'activelist_event.dart';
part 'activelist_state.dart';
part 'activelist_bloc.freezed.dart';

class ActivelistBloc extends Bloc<ActivelistEvent, ActivelistState> {
  final IRepository repository;
  ActivelistBloc({this.repository} ) : super(_Initial());

  @override
  Stream<ActivelistState> mapEventToState(
    ActivelistEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(load: (e) async*{
      yield ActivelistState.loading();
      Either<Failure, List<ActiveList>> activeListsResult = await repository.getActiveLists();
      
      yield activeListsResult.fold(
        (l) => ActivelistState.error(failure: l), 
        (r) => ActivelistState.loaded(userLists: r));
    });
  }
}
