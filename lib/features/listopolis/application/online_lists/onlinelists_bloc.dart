import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/error/failures.dart';
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
      started: (e) async* { yield Loading();}, 
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
                      (failure) => Error(message: "Server Problem!"), 
                      (activeLists) => Loaded(onlineLists: activeLists ) 
            );
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

