import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';
part 'connectivity_bloc.freezed.dart';

@injectable
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final IConnectivityChecker _connectivityChecker;
  StreamSubscription? checkerSubscription;
  ConnectivityBloc(IConnectivityChecker aConnectivityChecker):  _connectivityChecker=aConnectivityChecker, super(_Initial()){
   checkerSubscription = _connectivityChecker.registerForConnectivityUpdate(_callWhenNoConnection, _callWhenConnection);
  }
  
  _callWhenNoConnection() {
    add(ConnectivityEvent.goOffline());
  }
  _callWhenConnection(){
    add(ConnectivityEvent.goOnline());
  }

  @override
  Stream<ConnectivityState> mapEventToState(
    ConnectivityEvent event,
  ) async* {
    // TODO: implement mapEventToState
     yield* event.map(
      started: (e) async* { 
          yield ConnectivityState.initial();
      }, 
      goOffline:  (e) async* { 
          yield ConnectivityState.offline();
      }, 
      goOnline:  (e) async* { 
          yield ConnectivityState.online();
      }, 
     );
  }
  @override
  Future<void> close() async {
    // TODO: implement close
    await checkerSubscription?.cancel();
    return super.close();

  }
}
